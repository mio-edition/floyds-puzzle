package floyds;

class ScopingSystem extends ecx.System {
	var scoped: Family<Scope>;
	var _scope: Wire<Scope>;

	public function new() {
	}

	public function destroyScope( id: String ) {
		for (e in scoped) {
			var scope = _scope.get(e);

			if (scope.id == id) {
				world.destroy(e);
				world.commit(e); // TODO (DK) necessary?
			}
		}
	}
}
