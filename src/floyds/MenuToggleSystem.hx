package floyds;

import kex.input.*;

class MenuToggleSystem extends ecx.System {
	var buttons: Family<AABB, MenuToggle, Position, AnimationController>;
	var cameras: Family<GuiObject, Viewport>;
	var _aabb: Wire<AABB>;
	var _menuToggle: Wire<MenuToggle>;
	var _position: Wire<Position>;
	var nav: Wire<StackNavigator>;
	var settings: Wire<SettingsService>;
	var cameraHelper: Wire<CameraHelper>;
	var _ac: Wire<AnimationController>;

    public function new() {
    }

	public function processMouseEvent( ev: MouseEvent ) : Result {
		switch ev.type {
			case Down:
				final x = ev.x;
				final y = ev.y;
				final camera = cameraHelper.screenCoordinatesToViewport(cameras, x, y);

				if (camera != null) {
					var wcoords = cameraHelper.unproject(camera, x, y);

					for (eButton in buttons) {
						final aabb = _aabb.get(eButton);
						final wx = wcoords.x;
						final wy = wcoords.y;
						final pos = _position.get(eButton);

						if (wx >= pos.x + aabb.minX && wx <= pos.x + aabb.maxX && wy >= pos.y + aabb.minY && wy <= pos.y + aabb.maxY) {
							final mb = _menuToggle.get(eButton);

							switch mb.action {
								case ToggleVoice:
									settings.toggleVoice();
							}
						}
					}
				}
			case _:
		}

		return Ignore;
	}

	override function update() {
		for (eButton in buttons) {
			final mt = _menuToggle.get(eButton);

			final anim = switch mt.action {
				case ToggleVoice: settings.voice ? 'enabled' : 'disabled';
			}

			final ac = _ac.get(eButton);

			if (ac.currentAnimation != anim) {
				ac.nextAnimation = Some(anim);
			}
		}
	}
}
