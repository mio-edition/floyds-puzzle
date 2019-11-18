package floyds;

class SpriterModelAnimationControllerSystem extends ecx.System {
	var animated: Family<AnimationController, SpriterModel>;
	var _ac: Wire<AnimationController>;
	var _spriterModel: Wire<SpriterModel>;

	public function new() {
	}

	override function update() {
		for (e in animated) {
			final ac = _ac.get(e);

			switch ac.nextAnimation {
				case None:
				case Some(animation):
					final sm = _spriterModel.get(e);
					sm.instance.play(animation); // TODO (DK) blend animations instead?
					sm.instance.speed = ac.speed;
					@:privateAccess sm.instance._currentAnimation.looping = ac.looping;
					ac.currentAnimation = animation;
					ac.nextAnimation = None;
			}
		}
	}
}
