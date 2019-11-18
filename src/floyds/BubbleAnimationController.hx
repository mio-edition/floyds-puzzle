package floyds;

class BubbleAnimationController extends ecx.System {
	var bubbles: Family<BubbleState, Visibility, AnimationController>;

	var _spriterModel: Wire<SpriterModel>;
	var _bubbleState: Wire<BubbleState>;
	var _visibility: Wire<Visibility>;
	var _ac: Wire<AnimationController>;

	public function new() {
	}

	override function update() {
		for (eBubble in bubbles) {
			final state = _bubbleState.get(eBubble);

			switch state.nextState {
				case Visible:
					switch state.state {
						case Hidden:
							state.state = Appearing;
							state.nextState = Unchanged;
							_visibility.get(eBubble).visible = true;
							final ac = _ac.get(eBubble);
							final aname = switch state.facing {
								case Left: 'appear-left';
								case Right: 'appear-right';
							}
							ac.nextAnimation = Some(aname);
							ac.looping = false;
							ac.speed = 0.25;
						case Visible:
						case Appearing:
						case Unchanged:
					}
				case Unchanged, Appearing:
				case Hidden:
					state.nextState = Unchanged;
					state.state = Hidden;
					_visibility.get(eBubble).visible = false;
			}
		}
	}
}
