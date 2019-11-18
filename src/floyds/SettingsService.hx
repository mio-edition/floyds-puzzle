package floyds;

class SettingsService extends ecx.Service {
	public var language(default, null) = 'en';
	public var voice(default, null) = true;

	public function new() {
	}

	public function changeLanguage( language: String ) {
		this.language = language;
	}

	public function toggleVoice() {
		this.voice = !this.voice;
	}
}
