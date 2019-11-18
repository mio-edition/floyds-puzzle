package floyds;

class PlayerAnimationControllerSystem extends ecx.System {
	var players: Family<AnimationController, PlayerState>;
	var _animationController: Wire<AnimationController>;
	var _playerstate: Wire<PlayerState>;

	public function new() {
	}

	override function update() {
		for (e in players) {
			var state = _playerstate.get(e);

			if (state.lastAction != state.action || state.lastFacing != state.facing) {
				var action = switch state.action {
					case Happy: 'jump';
					case Idle: 'idle';
					case Sniff: 'sniff';
					case Walk: 'walk';
				}

				var facing = switch state.facing {
					case Left: 'left';
					case Right: 'right';
				}

				var animation = '$action-$facing';
				var ac = _animationController.get(e);

				if (ac.currentAnimation != animation) {
					ac.nextAnimation = Some(animation);
				}
			}
		}
	}
}
