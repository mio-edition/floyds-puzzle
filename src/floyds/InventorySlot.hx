package floyds;

class InventorySlot extends AutoComp<InventorySlotData> {}

private class InventorySlotData {
	public var index: Int;
	public var item: Option<Entity>;
	public var filled: Bool;

	public function new() {
	}
}
