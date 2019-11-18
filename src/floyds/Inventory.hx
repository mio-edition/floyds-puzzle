package floyds;

class Inventory extends AutoComp<InventoryData> {}

private class InventoryData {
	public var slots: Array<Option<Entity>> = [for (i in 0...InventorySystem.Slots) None];

	public function new() {
	}
}
