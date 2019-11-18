package floyds;

class Viewport extends AutoComp<ViewportData> {
}

private class ViewportData {
	public var left = 0;
	public var top = 0;
	public var width = 0;
	public var height = 0;

	public var scaleFactor = 1.0;

	public function new() {
	}
}
