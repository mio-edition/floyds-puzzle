package floyds;

class GuiSpriterAnimator extends ecx.System {
	var models: Family<SpriterModel, GuiObject>;

	var time: Wire<GuiTimeSystem>;
	var animator: Wire<SpriterModelAnimatorHelper>;

	public function new() {
	}

	override function update() {
		animator.updateEntities(models, time.deltaTime);
	}
}
