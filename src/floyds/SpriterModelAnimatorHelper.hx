package floyds;

import ecx.types.EntityVector;

class SpriterModelAnimatorHelper extends ecx.System {
	var _sm: Wire<SpriterModel>;

	public function new() {
	}

	public function updateEntities( models: EntityVector, dt: Float ) {
		for (model in models) {
			_sm.get(model).instance.step(dt);
		}
	}
}
