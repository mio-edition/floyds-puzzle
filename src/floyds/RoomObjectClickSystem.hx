package floyds;

import kex.input.*;

class RoomObjectClickSystem extends ecx.System {
    var objects: Family<AABB, Position, RoomObject>;
    var players: Family<PlayerState>;

    var _position: Wire<Position>;
    var _aabb: Wire<AABB>;
    var _pathQuery: Wire<PathQuery>;

	var cameras: Family<RoomObject, Viewport>;
	var cameraHelper: Wire<CameraHelper>;

    public function new() {
    }

	public function processMouseEvent( ev: MouseEvent ) : Result {
		switch ev.type {
			case Down:
				if (ev.button == 0) {
					final camera = cameraHelper.screenCoordinatesToViewport(cameras, ev.x, ev.y);

					if (camera != null) {
						final wcoords = cameraHelper.unproject(camera, ev.x, ev.y);
                        final wx = wcoords.x;
                        final wy = wcoords.y;

                        for (eObject in objects) {
                            final pos = _position.get(eObject);
                            final aabb = _aabb.get(eObject);

                            if (wx >= pos.x + aabb.minX && wx <= pos.x + aabb.maxX && wy >= pos.y + aabb.minY && wy <= pos.y + aabb.maxY) {
                                for (ePlayer in players) {
                                    final q = _pathQuery.create(ePlayer);
                                    q.toX = pos.x;
                                    q.toY = pos.y + 32;
                                    world.commit(ePlayer);
                                    return SwallowEvent;
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