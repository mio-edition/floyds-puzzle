package floyds;

class Confetti extends AutoComp<ConfettiData> {}

private class ConfettiData {
	public var x = 0.0;
	public var y = 0.0;
	public var colorIndex = 0;
	public var speed = 1.0;
	public var dx = 0.0;
	public var dy = 1.0;
	public var styleIndex = 0;
	public var active = false;
	public var scale = 1.0;
	public var scaleProgress = 0.01;

	public function new() {
	}
}
