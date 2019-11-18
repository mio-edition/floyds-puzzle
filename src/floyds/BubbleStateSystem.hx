package floyds;

class BubbleStateSystem extends ecx.System {
	var bubbles: Family<BubbleTag, BubbleState, SpriterModel>;
	var players: Family<BubbleOwner, PlayerState>;

	var _spriterModel: Wire<SpriterModel>;
	var _bubbleState: Wire<BubbleState>;
	var _bubbleOwner: Wire<BubbleOwner>;
	var _bubbleTag: Wire<BubbleTag>;
	var _playerState: Wire<PlayerState>;

	public function new() {
	}

	override function update() {
		for (ePlayer in players) {
			final playerState = _playerState.get(ePlayer);
			final playerBubbleId = _bubbleOwner.get(ePlayer).id;

			switch playerState.containerInProximity {
				case null:
					for (eBubble in bubbles) {
						final bid = _bubbleTag.get(eBubble).id;

						if (bid == playerBubbleId) {
							final bstate = _bubbleState.get(eBubble);
							bstate.nextState = Hidden;
						}
					}
				case v:
					for (eBubble in bubbles) {
						final bid = _bubbleTag.get(eBubble).id;

						if (bid == playerBubbleId) {
							final bstate = _bubbleState.get(eBubble);
							bstate.nextState = Visible;
							bstate.facing = playerState.facing;
						}
					}
			}
		}
	}
}
