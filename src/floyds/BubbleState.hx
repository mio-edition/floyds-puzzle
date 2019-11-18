package floyds;

class BubbleState extends ecx.AutoComp<BubbleStateData> {}

private class BubbleStateData {
	public var state: BubbleStateKind;
	public var nextState: BubbleStateKind;
	public var facing: PlayerFacing = Left;

	public function new() {
	}
}
