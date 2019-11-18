package floyds;

import kex.input.*;

class ClickToMoveInputSystem extends ecx.System {
	var agents: Family<NavAgent>; // TODO (DK) add some kind of PlayerControlledAgent component incase there are npc's with a navagent?
	var cameras: Family<RoomObject, Viewport>;
	var _pathQuery: Wire<PathQuery>;

	var cameraHelper: Wire<CameraHelper>;

	public function new() {
	}

	public function processMouseEvent( ev: MouseEvent ) : Result {
		switch ev.type {
			case Down:
				if (ev.button == 0) {
					final x = ev.x;
					final y = ev.y;
					final camera = cameraHelper.screenCoordinatesToViewport(cameras, x, y);

					if (camera != null) {
						var wcoords = cameraHelper.unproject(camera, x, y);

						if (wcoords.y >= -180 && wcoords.y <= 260) { // TODO (DK) test vs a navmesh instead of hardcoding
							for (e in agents) {
								final q = _pathQuery.create(e);
								q.toX = wcoords.x;
								q.toY = wcoords.y;
								world.commit(e);
							}
						}
					}
				}
			case _:
		}

		return Ignore;
	}
}
