package floyds;

import kha.Sound;

class SoundPlayerService extends ecx.Service {
	public function new() {
	}

	public function playEffect( sound: Sound ) {
		kha.audio1.Audio.play(sound);
	}

	public function playLoop( sound: Sound, ?volume = 1.0 ) {
		kha.audio1.Audio.play(sound, true).volume = volume;
	}
}
