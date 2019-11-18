package floyds;

class AnimationController extends AutoComp<AnimationControllerData> {}

private class AnimationControllerData {
	public var currentAnimation: String;
	public var nextAnimation: Option<String> = None;
	public var looping = true;
	public var speed = 1.0;

	public function new() {
	}
}
