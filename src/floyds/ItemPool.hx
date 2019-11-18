package floyds;

class ItemPool extends ecx.System {
	var _position: Wire<Position>;
	var rng: Wire<RNGService>;

	public function new() {
	}

	public function distribute( all: Array<EntityData>, nr: Int ) : Array<EntityData> {
		var pool = all.copy(); // keep source data intact (when levels are restarted)
		rng.shuffle(pool);

		final candidates = pool.splice(0, InventorySystem.Slots);

		function add( a: Array<ComponentData>, e: ComponentData ) {
			a.push(e);
			return a;
		}

		// mark as one of the target items to collect
		final interesting = Lambda.mapi(candidates, (i, item) -> {
			name: item.name,
			components: add(item.components.copy(), ItemOfInterest(i + 1)),
		});

		while (pool.length + InventorySystem.Slots > nr) {
			pool.pop();
		}

		final poolsize = pool.length;

		// duplicate missing items randomly
		while (pool.length + InventorySystem.Slots < nr) {
			final t = pool[Std.random(poolsize)];

			pool.push({
				name: t.name,
				components: t.components.copy(),
			});
		}

		final filler = Lambda.mapi(pool, (i, item) -> {
			name: item.name,
			components: add(item.components.copy(), ItemOfInterest(0)),
		});

		return rng.shuffle(interesting.concat(filler));
	}
}
