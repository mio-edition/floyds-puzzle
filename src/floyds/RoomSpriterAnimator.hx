package floyds;

class RoomSpriterAnimator extends ecx.System {
	var models: Family<SpriterModel, RoomObject>;
	var time: Wire<WorldTimeSystem>;
	var animator: Wire<SpriterModelAnimatorHelper>;

	public function new() {
	}

	override function update() {
		animator.updateEntities(models, time.deltaTime);
	}
}
