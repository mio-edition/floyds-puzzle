package floyds;

class Client extends ecx.Service {
	var factory: Wire<Factory>;
	var nav: Wire<StackNavigator>;
	var sfx: Wire<SoundPlayerService>;
	var assets: Wire<AssetService>;
	var n: Wire<NotificationService>;

	override function initialize() {
		nav.push(Gui('language-selection-gui.json'));
		// nav.push(Gui('credits-gui.json'));

		assets.sounds.get('menu-theme').next(theme -> {
			sfx.playLoop(theme, 0.25);
			return theme;
		}).handle(n.watch);
	}

	public static final Width = 1920;
	public static final Height = 1080;

	public static function bootstrap() {
		final buffered = false;
		final wc = new WorldConfig();
		final composer = new Composer({ buffered: buffered, screenWidth: Width, screenHeight: Height });
		final mbs = new MenuButtonSystem();
		final mts = new MenuToggleSystem();
		final ctmis = new ClickToMoveInputSystem();
		final rocs = new RoomObjectClickSystem();
		final drags = new ItemDragSystem();
		final stacknav = new StackNavigator({ canStopApp: true });
		final kis = new KeyInputSystem();

        wc.add(new UpdateService({ frequency: 1 / 60 }), -10);
		wc.add(new ecx.common.systems.SystemRunner(), -9);

        wc.add(new AssetService(), -5);
		wc.add(new NotificationService(), -1);
        wc.add(new Client());
        wc.add(composer);
        wc.add(new Factory());
        wc.add(new GuiTimeSystem());
        wc.add(new WorldTimeSystem());
		wc.add(new InputService());

		wc.add(new Visibility());
		wc.add(new AutoViewport());
		wc.add(new Viewport());
		wc.add(new Camera());
		wc.add(new CameraProjection());
		wc.add(new CameraHelper());
		wc.add(new TrackerTarget());
		wc.add(new Tracker());

		wc.add(new AutoViewportSystem());
		wc.add(new ItemProximitySystem({ distance: 150 }));
		wc.add(new PathFinderSystem());
		wc.add(new PathMovementSystem());
		wc.add(ctmis);
		wc.add(rocs);
		wc.add(new TrackingSystem());
		wc.add(new ClampCameraPositionSystem()); // after TrackingSystem
		wc.add(new SyncBubbleToPlayerSystem()); // after camera?

		wc.add(new Scope());
		wc.add(new ScopingSystem());

		wc.add(new DrawOrder());
		wc.add(new DrawOrderHelper());

		wc.add(kis);
		wc.add(stacknav);
		wc.add(new SettingsService());

		wc.add(new Position());

		wc.add(new RoomObject());
		wc.add(new RoomSpriterAnimator());
		wc.add(new RoomSpriterEntityRenderer(composer.notify2d, Height));

		wc.add(new GuiObject());
		wc.add(new GuiSpriterAnimator());
		wc.add(new GuiSpriterEntityRenderer(composer.notify2d, Height));
		wc.add(new GuiTextRenderer(composer.notify2d));

		wc.add(new CurtainSystem(composer.notify2d));
		wc.add(new MenuButton());
		wc.add(new MenuToggle());
		wc.add(new FontAsset());
		wc.add(new MenuText());
		wc.add(mbs);
		wc.add(mts);

		wc.add(new Path());
		wc.add(new PathQuery());
		wc.add(new NavAgent());

		wc.add(new SoundPlayerService());

        kha.math.Random.init(Std.int(Date.now().getTime()));
		wc.add(new RNGService(kha.math.Random.Default));
		wc.add(new BubbleAnimationController());
		wc.add(new BubbleOwner());
		wc.add(new BubbleState());
		wc.add(new BubbleStateSystem());
		wc.add(new BubbleTag());
		wc.add(new ItemContainer());
		wc.add(new ItemPool());
		wc.add(new ItemOfInterest());
		wc.add(new Inventory());
		wc.add(new InventorySlot());
		wc.add(new InventorySystem());
		wc.add(new PlayerState());
		wc.add(new PlayerStateMachineSystem());
		wc.add(new PlayerAnimationControllerSystem());
		wc.add(new InventoryItemAnimationControllerSystem());
		wc.add(drags);
		wc.add(new Confetti());
		wc.add(new ConfettiSystem(composer.notify2d, Height));
		wc.add(new LevelCompleted());
		wc.add(new LevelCompletionSystem());
		wc.add(new Dragged());
		wc.add(new ItemSlotSoundEffect());
		wc.add(new VisibilityCountdownSystem());

		wc.add(new AnimationController());
		wc.add(new AABB());
		wc.add(new SpriterAABBQuery());
		wc.add(new SpriterEntityBoundsCalculator());
		wc.add(new SpriterModel());
		wc.add(new SpriterModelAnimationControllerSystem());
		wc.add(new SpriterModelAnimatorHelper());

		Engine.createWorld(wc);
	}

	function new() {
	}
}