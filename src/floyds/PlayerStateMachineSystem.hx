package floyds;

class PlayerStateMachineSystem extends ecx.System {
	var players: Family<PlayerState>;
	var _playerstate: Wire<PlayerState>;
	var _path: Wire<Path>;
	var _levelCompleted: Wire<LevelCompleted>;

	public function new() {
	}

	override function update() {
		for (ePlayer in players) {
			var state = _playerstate.get(ePlayer);
			state.lastFacing = state.facing;
			state.lastAction = state.action;

			if (_levelCompleted.has(ePlayer)) {
				state.action = Happy;
			} else if (_path.has(ePlayer)) {
				final path = _path.get(ePlayer);

				if (path.fromX < path.toX) {
					state.facing = Right;
				} else if (path.toX < path.fromX) {
					state.facing = Left;
				}

				state.action = Walk;
			} else {
				state.action = state.containerInProximity == null ? Idle : Sniff;
			}
		}
	}
}
