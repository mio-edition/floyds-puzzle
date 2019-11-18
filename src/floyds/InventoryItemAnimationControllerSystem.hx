package floyds;

class InventoryItemAnimationControllerSystem extends ecx.System {
	var slots: Family<InventorySlot, AnimationController>;
	var _animationController: Wire<AnimationController>;
	var _inventorySlot: Wire<InventorySlot>;

	public function new() {
	}

	override function update() {
		for (eSlot in slots) {
			final slot = _inventorySlot.get(eSlot);
			final ac = _animationController.get(eSlot);

			if (slot.filled && ac.currentAnimation != 'slotted') {
				ac.nextAnimation = Some('slotted');
			} else if (!slot.filled && ac.currentAnimation != 'empty') {
				ac.nextAnimation = Some('empty');
			}
		}
	}
}
