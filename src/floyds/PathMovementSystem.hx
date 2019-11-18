package floyds;

class PathMovementSystem extends ecx.System {
	var agents: Family<Path, Position>;
    var _path: Wire<Path>;
    var _position: Wire<Position>;

    public function new() {
    }

	override function update() {
		for (eAgent in agents) {
			var path = _path.get(eAgent);
			var pos = _position.get(eAgent);

			path.progress += 1 / 60;//0.016; // TODO (DK)

			if (path.progress > path.duration) {
				path.progress = path.duration;
			}

			pos.x = tween(pos.x, path.fromX, path.toX, path.progress, path.duration);
			pos.y = tween(pos.y, path.fromY, path.toY, path.progress, path.duration);

			if (path.progress >= path.duration) {
				_path.destroy(eAgent);
				world.commit(eAgent);
			}
		}
	}

	static inline function tween( value: Float, from: Float, to: Float, progress: Float, duration: Float )
		return linearEase(from, to - from, progress * 1 / duration);

	static inline function linearEase( start : Float, delta : Float, time : Float )
		return start + delta * time;
}