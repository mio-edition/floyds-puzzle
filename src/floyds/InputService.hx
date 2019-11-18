package floyds;

import kex.input.*;

class InputService extends ecx.Service {
	var input = new kex.input.InputSystem();
	var mbs: Wire<MenuButtonSystem>;
	var mts: Wire<MenuToggleSystem>;
	var ctmis: Wire<ClickToMoveInputSystem>;
	var rocs: Wire<RoomObjectClickSystem>;
	var drags: Wire<ItemDragSystem>;
	var kis: Wire<KeyInputSystem>;
	var paused: InputLayer = null;

	public function new() {
	}

	override function initialize() {
		input.addTopLayer({ mouse: mbs.processMouseEvent });
		input.addTopLayer({ mouse: mts.processMouseEvent });
		input.addTopLayer({ mouse: ctmis.processMouseEvent });
		input.addTopLayer({ mouse: rocs.processMouseEvent });
		input.addTopLayer({ keys: kis.processKeyEvent });
		input.addTopLayer({ mouse: drags.processMouseEvent });
	}

	function eatMouse( _ ) : Result {
		return SwallowEvent;
	}

	function eatKeys( _ ) : Result {
		return SwallowEvent;
	}

	public function pause() {
		if (paused == null) {
			paused = { mouse: eatMouse, keys: eatKeys }
			input.addTopLayer(paused);
		}
	}

	public function resume() {
		if (paused != null) {
			input.removeLayer(paused);
			paused = null;
		}
	}
}