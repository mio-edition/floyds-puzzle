package floyds;

class TrackingSystem extends ecx.System {
	var targets: Family<TrackerTarget, Position>;
	var trackers: Family<Tracker, Position, Viewport>;

	var _target: Wire<TrackerTarget>;
	var _tracker: Wire<Tracker>;
	var _position: Wire<Position>;

	public function new() {
	}

	override function update() {
		for (eTracker in trackers) {
			final tracker = _tracker.get(eTracker);

			if (!tracker.active) {
				continue;
			}

			final trackerId = tracker.id;

			for (eTarget in targets) {
				final tgtId = _target.get(eTarget).id;

				if (trackerId == tgtId) {
					final tgtPos = _position.get(eTarget);
					final trPos = _position.get(eTracker);

					if (tracker.trackX) {
						trPos.x = tgtPos.x;
					}

					if (tracker.trackY) {
						trPos.y = tgtPos.y;
					}
				}
			}
		}
	}
}
