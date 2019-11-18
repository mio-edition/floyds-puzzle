package floyds;

class Path extends AutoComp<PathData> {}

private class PathData {
	public var fromX: Float;
	public var fromY: Float;
	public var toX: Float;
	public var toY: Float;

	public var duration: Float;
	public var progress: Float;

	public function new() {
	}
}
