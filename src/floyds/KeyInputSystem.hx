package floyds;

import kex.input.*;
import kha.input.KeyCode;

class KeyInputSystem extends ecx.System {
	var nav: Wire<StackNavigator>;

#if enable_debug_keys // TODO (DK) move to separate system?
	var inventorySlots: Family<InventorySlot>;
	var _inventorySlot: Wire<InventorySlot>;
#end

	public function new() {
	}

	public function processKeyEvent( ev: KeyEvent ) : Result {
		switch ev {
			case { type: Down, code: KeyCode.Escape }:
				nav.pop();
			case { type: Down, code: KeyCode.Back }:
				nav.pop();
#if enable_debug_keys
			case { type: Down, code: KeyCode.One }:
				toggleSlot(1);
			case { type: Down, code: KeyCode.Two }:
				toggleSlot(2);
			case { type: Down, code: KeyCode.Three }:
				toggleSlot(3);
			case { type: Down, code: KeyCode.Four }:
				toggleSlot(4);
			case { type: Down, code: KeyCode.Five }:
				toggleSlot(5);
#end
			case _:
		}

		return Ignore;
	}

#if enable_debug_keys
	function toggleSlot( index: Int ) {
		for (eSlot in inventorySlots) {
			final slot = _inventorySlot.get(eSlot);

			if (slot.index == index) {
				slot.filled = !slot.filled;
			}
		}
	}
#end
}
