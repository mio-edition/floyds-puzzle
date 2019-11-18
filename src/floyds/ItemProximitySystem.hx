package floyds;

import kha.math.FastVector2;

class ItemProximitySystem extends ecx.System {
	var bubbles: Family<BubbleTag, Position>;
	var containers: Family<ItemContainer, Position, SpriterModel>;
	var players: Family<PlayerState, Position>;
	var _itemContainer: Wire<ItemContainer>;
	var _playerState: Wire<PlayerState>;
	var _position: Wire<Position>;
	var _visibility: Wire<Visibility>;
	var _dragged: Wire<Dragged>;
	var bubblePosX = 0.0;
	var bubblePosY = 0.0;

	final Distance: Float;

	public function new( opts: { distance: Float } ) {
		Distance = opts.distance;
	}

	override function update() {
		for (eBubble in bubbles) {
			final pos = _position.get(eBubble);
			bubblePosX = pos.x;
			bubblePosY = pos.y;
		}

		// TODO (DK) the whole logic could be handled by adding a PlayerIsInProximity component
		//			 and separate systems instead of setting everything here?

		for (ePlayer in players) {
			final plpos = _position.get(ePlayer);
			final pstate = _playerState.get(ePlayer);
			pstate.containerInProximity = null;

			for (eContainer in containers) {
				final cpos = _position.get(eContainer);
				final distv = new FastVector2(plpos.x - cpos.x, plpos.y - cpos.y);
				final dist = Math.abs(distv.length);
				final ic = _itemContainer.get(eContainer);

				switch ic.item {
					case None:
					case Some(eItem):
						final itemVis = _visibility.get(eItem);

						if (dist < Distance) {
							if (itemVis.countdown == 0) {
								itemVis.countdown = 27;
							}

							pstate.containerInProximity = eContainer;

							// (DK) prevent overwriting pos when dragging
							if (!_dragged.has(eItem)) {
								final itemPos = _position.get(eItem);
								itemPos.x = bubblePosX;
								itemPos.y = bubblePosY;
							}
						} else {
							itemVis.visible = false;
							itemVis.countdown = 0;
						}
				}
			}
		}
	}
}
