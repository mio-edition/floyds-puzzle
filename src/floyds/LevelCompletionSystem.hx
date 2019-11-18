package floyds;

import kha.Sound;

class LevelCompletionSystem extends ecx.System {
	var players: Family<LevelCompleted>;

	var _levelCompleted: Wire<LevelCompleted>;
	var nav: Wire<StackNavigator>;
	var confetti: Wire<ConfettiSystem>;
	var sfx: Wire<SoundPlayerService>;
	var assets: Wire<AssetService>;
	var n: Wire<NotificationService>;
	var input: Wire<InputService>;

	public static final CountDown = 480;
	var completionSound: Sound;

	public function new() {
	}

	override function initialize() {
		assets.sounds.get('room-completed').next(snd -> {
			completionSound = snd;
			return snd;
		}).handle(n.watch);
	}

	override function update() {
		for (ePlayer in players) {
			final lc = _levelCompleted.get(ePlayer);

			if (lc.countdown == CountDown) {
				confetti.start();
				input.pause();
			}

			if (lc.countdown == CountDown - 50) {
				if (completionSound != null) {
					sfx.playEffect(completionSound);
				}
			}

			if (lc.countdown == 15) {
				nav.pop();
			}

			if (lc.countdown > -1) {
				lc.countdown -= 1;
			}

			if (lc.countdown == 0) {
				confetti.stop();
			}
		}
	}
}
