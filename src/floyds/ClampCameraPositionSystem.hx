package floyds;

class ClampCameraPositionSystem extends ecx.System {
    var trackers: Family<Tracker, Position, Viewport>;
	var _position: Wire<Position>;
	var _tracker: Wire<Tracker>;

	public function new() {
	}

	override function update() {
        for (eTracker in trackers) {
            final tracker = _tracker.get(eTracker);
			final trPos = _position.get(eTracker);
			// final vp = _viewport.get(eTracker);

			if (trPos.x < -1220) { // TODO (DK) should be a scene or cameratrack/bounds property or something
				trPos.x = -1220;
			}

			if (trPos.x > 1270) { // TODO (DK) should be a scene or cameratrack/bounds property or something
				trPos.x = 1270;
			}
		}
	}
}
