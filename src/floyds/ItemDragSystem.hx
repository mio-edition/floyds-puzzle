package floyds;

import kex.input.*;

class ItemDragSystem extends ecx.System {
	var items: Family<AABB, ItemOfInterest, Position, Visibility>;
	var slots: Family<AABB, InventorySlot, Position>;
	var containers: Family<ItemContainer>;
	var cameras: Family<GuiObject, Viewport>;
	var cameraHelper: Wire<CameraHelper>;

	var _aabb: Wire<AABB>;
	var _dragged: Wire<Dragged>;
	var _position: Wire<Position>;
	var _inventorySlot: Wire<InventorySlot>;
	var _itemOfInterest: Wire<ItemOfInterest>;
	var _itemContainer: Wire<ItemContainer>;
	var _visibility: Wire<Visibility>;

// TODO (DK) better handle it via Dragged component
	var dragging: Option<Entity> = None;
	var dragOriginX = 0.0;
	var dragOriginY = 0.0;

	// TODO (DK) handle logic here?
	var _itemSlotSoundEffect: Wire<ItemSlotSoundEffect>;
	var sfx: Wire<SoundPlayerService>;
	var settings: Wire<SettingsService>;

	public function new() {
	}

	public function processMouseEvent( ev: MouseEvent ) : Result {
		switch ev {
			case { type: Down, button: 0 }:
				final x = ev.x;
				final y = ev.y;
				final camera = cameraHelper.screenCoordinatesToViewport(cameras, x, y);

				if (camera != null) {
					var wcoords = cameraHelper.unproject(camera, x, y);
					final wx = wcoords.x;
					final wy = wcoords.y;

					for (eItem in items) {
						if (_visibility.get(eItem).visible) {
							final itemAABB = _aabb.get(eItem);
							final itemPos = _position.get(eItem);

							if (wx >= itemPos.x + itemAABB.minX && wx <= itemPos.x + itemAABB.maxX && wy >= itemPos.y + itemAABB.minY && wy <= itemPos.y + itemAABB.maxY) {
								dragging = Some(eItem);
								dragOriginX = itemPos.x;
								dragOriginY = itemPos.y;
								_dragged.create(eItem);
								world.commit(eItem);
								return CaptureLayer;
							}
						}
					}
				}
			case { type: Up, button: 0 }:
				switch dragging {
					case Some(eDragging):
						final x = ev.x;
						final y = ev.y;
						final camera = cameraHelper.screenCoordinatesToViewport(cameras, x, y);

						if (camera != null) {
							var wcoords = cameraHelper.unproject(camera, x, y);
							final wx = wcoords.x;
							final wy = wcoords.y;
							final ioi = _itemOfInterest.get(eDragging);

							for (eSlot in slots) {
								final slotAABB = _aabb.get(eSlot);
								final slotPos = _position.get(eSlot);

								if (wx >= slotPos.x + slotAABB.minX && wx <= slotPos.x + slotAABB.maxX && wy >= slotPos.y + slotAABB.minY && wy <= slotPos.y + slotAABB.maxY) {
									final slot = _inventorySlot.get(eSlot);

									if (slot.index == ioi.index) {
										slot.filled = true;
										dragging = None;

										if (settings.voice) {
											if (_itemSlotSoundEffect.has(eDragging)) {
												var ise = _itemSlotSoundEffect.get(eDragging);
												sfx.playEffect(ise.sound);
											}
										}

										// TODO (DK) good design choice that we clear the container here?
										for (eContainer in containers) {
											final ic = _itemContainer.get(eContainer);

											switch ic.item {
												case Some(eItem) if (eItem == eDragging):
													ic.item = None;
													_dragged.destroy(eItem);
													world.commit(eItem);
												case _:
											}
										}

										world.destroy(eDragging);
										break;
									}
								}
							}
						}

						if (eDragging != Entity.NULL) {
							final itemPos = _position.get(eDragging);
							itemPos.x = dragOriginX;
							itemPos.y = dragOriginY;
							_dragged.destroy(eDragging);
							world.commit(eDragging);
						}

						dragging = None;
						return ReleaseLayer;
					case None:
				}

				return ReleaseLayer;
			case { type: Move }:
				switch dragging {
					case Some(eDragging):
						final itemPos = _position.get(eDragging);

						final x = ev.x;
						final y = ev.y;
						final camera = cameraHelper.screenCoordinatesToViewport(cameras, x, y);

						if (camera != null) {
							var wcoords = cameraHelper.unproject(camera, x, y);
							final wx = wcoords.x;
							final wy = wcoords.y;

							itemPos.x = wx;
							itemPos.y = wy;
						}
					case None:
				}
			case { type: Leave }:
				switch dragging {
					case Some(eDragging):
						final itemPos = _position.get(eDragging);
						itemPos.x = dragOriginX;
						itemPos.y = dragOriginY;
						dragging = None;
					case None:
				}

				return ReleaseLayer;
			case _:
		}

		return dragging == None ? Ignore : SwallowEvent;
	}
}