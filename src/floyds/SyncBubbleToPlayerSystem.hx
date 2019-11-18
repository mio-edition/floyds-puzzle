package floyds;

class SyncBubbleToPlayerSystem extends ecx.System {
	var players: Family<PlayerState, Position>;
	var bubbles: Family<BubbleTag, Position>;
	var roomCams: Family<RoomObject, Position, Viewport>;

	var _position: Wire<Position>;

	public function new() {
	}

	override function update() {
		for (eCamera in roomCams) {
			for (eBubble in bubbles) {
				for (ePlayer in players) {
					final cpos = _position.get(eCamera);
					final ppos = _position.get(ePlayer);
					final bpos = _position.get(eBubble);
					bpos.x = ppos.x - cpos.x;
					bpos.y = ppos.y - cpos.y - 340;
				}
			}
		}
	}
}