package floyds;

import haxe.io.Path;
import kha.Color;

class Factory extends ecx.System {
	var assets: Wire<AssetService>;
	var n: Wire<NotificationService>;

	var _aabb: Wire<AABB>;
	var _autoViewport: Wire<AutoViewport>;
	var _animationController: Wire<AnimationController>;
	var _bubbleOwner: Wire<BubbleOwner>;
	var _bubbleTag: Wire<BubbleTag>;
	var _bubbleState: Wire<BubbleState>;
	var _cameraProjection: Wire<CameraProjection>;
	var _fontAsset: Wire<FontAsset>;
	var _trackerTarget: Wire<TrackerTarget>;
	var _tracker: Wire<Tracker>;
	var _drawOrder: Wire<DrawOrder>;
	var _guiObject: Wire<GuiObject>;
	var _inventory: Wire<Inventory>;
	var _inventorySlot: Wire<InventorySlot>;
	var _itemSlotSoundEffect: Wire<ItemSlotSoundEffect>;
	var _itemContainer: Wire<ItemContainer>;
	var _itemOfInterest: Wire<ItemOfInterest>;
	var _menuButton: Wire<MenuButton>;
	var _menuToggle: Wire<MenuToggle>;
	var _menuText: Wire<MenuText>;
	var _navAgent: Wire<NavAgent>;
	var _playerState: Wire<PlayerState>;
	var _position: Wire<Position>;
	var _roomObject: Wire<RoomObject>;
	var _scope: Wire<Scope>;
	var _spriterAABBQuery: Wire<SpriterAABBQuery>;
	var _spriterModel: Wire<SpriterModel>;
	var _viewport: Wire<Viewport>;
	var _visibility: Wire<Visibility>;

	var scopes: Wire<ScopingSystem>;
	var nav: Wire<StackNavigator>;
	var settings: Wire<SettingsService>;

// TODO (DK) move initialization to another system (InventorySystem)?
	var itempool: Wire<ItemPool>;
	var inventorySlots: Family<InventorySlot>;
	var interestingItems: Family<ItemOfInterest, SpriterModel>;
	var itemContainers: Family<ItemContainer>;

	var composer: Wire<Composer>;

	public function new() {
	}

	public function destroyRoomScope( id: String ) {
		scopes.destroyScope(id);
	}

	public function destroyGuiScope( id: String ) {
		scopes.destroyScope(id);
	}

	public function loadRoom( url: String ) : Promise<Noise> {
		trace('loadRoom: $url');
		final scope = { scope: url }

		return assets.room.get(url, scope)
			.next(createRoom.bind(url, scope, _));
	}

	public function loadGui( url: String ) : Promise<Noise> {
		trace('loadGui: $url');
		final scope = { scope: url }

		return assets.gui.get(url, scope)
			.next(createGui.bind(url, scope, _));
	}

	function createGui( url: String, opts, data: GuiData ) {
		trace('createGui: $url');

		if (data.clearColor != null) {
			composer.clearColor = Color.fromString(data.clearColor);
		}

		return Promise.inParallel([
			for (entityData in data.entities)
				createGuiEntity(url, opts, entityData)
		]);
	}

	function createRoom( url: String, opts, roomData: RoomData ) {
		trace('createRoom: $url');

		if (roomData.clearColor != null) {
			composer.clearColor = Color.fromString(roomData.clearColor);
		}

		return Promise.inParallel([
			for (entityData in roomData.entities)
				createRoomEntity(url, opts, entityData)
		]).next(roomEnts -> {
			var containerCount = 0;

			for (e in roomEnts) {
				if (_itemContainer.has(e)) {
					containerCount += 1;
				}
			}

			final dist = itempool.distribute(roomData.itempool, containerCount);

			return Promises.multi({
				roomEnts: roomEnts,
				dist: dist,
				items: Promise.inParallel([
					// create an item entity for every container
					for (itemData in dist)
						createGuiEntity(url, opts, itemData)
							.next(function( eItem ) {
								// _spriterModel.get(eItem).visible = false;
								_visibility.get(eItem).visible = false;
								_position.create(eItem);
								_aabb.create(eItem);
								_spriterAABBQuery.create(eItem);
								_drawOrder.create(eItem).kind = Static(1);
								world.commit(eItem);
								return eItem;
							})
				]),
			});
		})
		.next(data -> {
			// load inventory and map created items to slots
			final items = data.items;
			final roomEnts = data.roomEnts;

			return assets.gui.get('inventory-gui.json', { scope: opts.scope })
				.next(function( guiData ) {
					var itemIndex = 0;

					for (i in 0...roomEnts.length) {
						final e = roomEnts[i];

						if (_itemContainer.has(e)) {
							final ic = _itemContainer.get(e);
							ic.item = Some(items[itemIndex]);
							itemIndex += 1;
						}
					}

					// map the 5 interesting items to slots
					final gd: GuiData = { entities: [], clearColor: guiData.clearColor }

					for (slotData in guiData.entities) {
						final comps = slotData.components.copy();

						for (slotComp in comps) {
							switch slotComp {
								case InventorySlot(slotIndex):
									for (eItem in items) {
										if (_itemOfInterest.has(eItem)) {
											final ioi = _itemOfInterest.get(eItem);

											if (ioi.index == slotIndex) {
												final smIOI = _spriterModel.get(eItem);
												comps.push(SpriterModel(smIOI.scmlName, smIOI.atlasName, smIOI.entityName));
											}
										}
									}
								case _:
							}
						}

						gd.entities.push({ name: slotData.name, components: comps });
					}

					return createGui(url, { scope: opts.scope }, gd);
				});
		});
	}

	function createRoomEntity( url, opts, data: EntityData )
		return createEntity(url, opts, data)
			.next(function( entity ) {
				_roomObject.create(entity);
				_scope.create(entity).id = opts.scope;
				return entity;
			});

	function createGuiEntity( url, opts, data: EntityData )
		return createEntity(url, opts, data)
			.next(function( entity ) {
				_guiObject.create(entity);
				_scope.create(entity).id = opts.scope;
				return entity;
			});

	function createEntity( url, opts, data: EntityData ) : Promise<Entity> {
		var e = world.create();

		return Promise.inParallel([
			for (c in data.components)
				createComponent(url, opts, e, c)
		]).next(_ -> {
			world.commit(e);
			return e;
		});
	}

	function createComponent( url, opts, entity: Entity, c: ComponentData ) : Promise<Noise>
		return switch c {
			case AutoViewport:
				_autoViewport.create(entity);
				_viewport.create(entity); // TODO (DK) autocreate?
				Noise;
			case BubbleTag(id):
				_bubbleTag.create(entity).id = id;
				final bs = _bubbleState.create(entity);
				bs.state = Hidden;
				bs.nextState = Unchanged;
				Noise;
			case BubbleOwner(id):
				_bubbleOwner.create(entity).id = id;
				Noise;
			case DrawOrder(kind):
				_drawOrder.create(entity).kind = kind;
				Noise;
			case OrthoCamera(zoom):
				_cameraProjection.create(entity);
				Noise;
			case TrackerTarget(id):
				_trackerTarget.create(entity).id = id;
				Noise;
			case Tracker(id, trackX, trackY):
				final t = _tracker.create(entity);
				t.id = id;
				t.trackX = trackX;
				t.trackY = trackY;
				Noise;
			case ItemSlotSoundEffect(baseUrl):
				final url = StringTools.replace(baseUrl, '%lang%', settings.language);

				return assets.sounds.get(url)
					.next(function( snd ) {
						final ise = _itemSlotSoundEffect.create(entity);
						ise.sound = snd;
						return Noise;
					});
			case InventorySlot(index):
				final slot = _inventorySlot.create(entity);
				slot.index = index;
				slot.item = None;
				slot.filled = false;
				_animationController.create(entity);
				Noise;
			case ItemContainer:
				_itemContainer.create(entity);
				_spriterAABBQuery.create(entity); // (DK) removed after 1 run as sizes don't change
				_aabb.create(entity);
				Noise;
			case ItemOfInterest(index):
				_itemOfInterest.create(entity).index = index;
				Noise;
			case MenuButton(actions):
				final mb = _menuButton.create(entity);
				mb.actions = actions;
				Noise;
			case MenuToggle(action):
				final mb = _menuToggle.create(entity);
				mb.action = action;
				Noise;
			case MenuText(text, fontSize):
				final mt = _menuText.create(entity);
				mt.text = text;
				mt.fontSize = fontSize;
				Noise;
			case FontAsset(url):
				assets.fonts.get(url, opts)
					.next(function( fnt ) {
						_fontAsset.create(entity).font = fnt;
						return fnt;
					});
			case NavAgent(speed):
				_navAgent.create(entity).speed = speed;
				Noise;
			case PlayerState(action, facing):
				final ps = _playerState.create(entity);
				ps.action = action;
				ps.facing = facing;
				_inventory.create(entity);
				Noise;
			case Position(x, y):
				final pos = _position.create(entity);
				pos.x = x;
				pos.y = y;
				Noise;
			case SpriterAABBQuery:
				_aabb.create(entity);
				_spriterAABBQuery.create(entity);
				Noise;
			case SpriterAnimation(name):
				_animationController.create(entity).nextAnimation = name != null ? Some(name) : None;
				Noise;
			case SpriterModel(scml, atlas, entityName):
				Promises.multi({
					scml: assets.scml.get(Path.join([Path.directory(url), scml]), opts),
					atlas: assets.tpjsaa.get(Path.join([Path.directory(url), atlas]), opts),
				}).next(data -> {
					var sm = _spriterModel.create(entity);
					sm.scmlName = scml;
					sm.atlasName = atlas;
					sm.entityName = entityName;
					sm.instance = data.scml.createEntity(entityName);
					sm.atlas = data.atlas;
					_visibility.create(entity).visible = true;
					return Noise;
				});
		}
}
