package floyds;

class InventorySystem extends ecx.System {
	public static final Slots = 5;

	var slots: Family<InventorySlot>;
	var players: Family<PlayerState>;
	var _inventorySlot: Wire<InventorySlot>;
	var _levelCompleted: Wire<LevelCompleted>;

	public function new() {
	}

	override function update() {
		var itemsCollected = 0;

		for (eSlot in slots) {
			final slot = _inventorySlot.get(eSlot);

			if (slot.filled) {
				itemsCollected += 1;
			}
		}

		if (itemsCollected > 0 && itemsCollected == slots.length) {
			for (ePlayer in players) {
				if (!_levelCompleted.has(ePlayer)) {
					_levelCompleted.create(ePlayer).countdown = LevelCompletionSystem.CountDown;
					world.commit(ePlayer);
				}
			}
		}
	}
}
