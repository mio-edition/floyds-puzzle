package floyds;

import kha.math.FastVector2;

class PathFinderSystem extends ecx.System {
	var queries: Family<NavAgent, PathQuery, Position>;
	var _agent: Wire<NavAgent>;
	var _path: Wire<Path>;
	var _pathQuery: Wire<PathQuery>;
	var _position: Wire<Position>;

	public function new() {
	}

	override function update() {
		for (eAgent in queries) {
			final query = _pathQuery.get(eAgent);
			final pos = _position.get(eAgent);
			final distance = new FastVector2(pos.x, pos.y).sub(new FastVector2(query.toX, query.toY)).length;

			if (distance > 0) {
				final speed = _agent.get(eAgent).speed;

				// TODO (DK) actually search for a path (NavMesh etc)
				var path = _path.create(eAgent);
				path.fromX = pos.x;
				path.fromY = pos.y;
				path.toX = query.toX;
				path.toY = query.toY;
				path.duration = distance / (speed * 60);
				path.progress = 0;
			}

			_pathQuery.destroy(eAgent);
			world.commit(eAgent);
		}
	}
}
