package floyds;

import kex.input.*;

class MenuButtonSystem extends ecx.System {
	var buttons: Family<AABB, MenuButton, Position>;
	var cameras: Family<GuiObject, Viewport>;
	var _aabb: Wire<AABB>;
	var _menuButton: Wire<MenuButton>;
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
							final mb = _menuButton.get(eButton);

							for (action in mb.actions) {
								switch action {
									case LoadGui(id):
										nav.push(Gui(id));
									case LoadRoom(id):
										final rnr = Std.random(3) + 1; // TODO (DK) don't hardcode the range
										final url = StringTools.replace(id, '%nr%', '$rnr');
										nav.push(Room(url));
									case SetLanguage(id):
										settings.changeLanguage(id);
									case OpenUrl(url):
										kha.System.loadUrl(url);
									case Back:
										nav.pop();
								}
							}
						}
					}
				}
			case _:
		}

		return Ignore;
	}
}
