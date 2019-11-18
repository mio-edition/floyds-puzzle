package floyds;

class Tracker extends AutoComp<TrackerData> {}

private class TrackerData {
	public var id: Int;
	public var trackX: Bool;
	public var trackY: Bool;
	public var active = true;

	public function new() {
	}
}
