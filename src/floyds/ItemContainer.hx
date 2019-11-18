package floyds;

class ItemContainer extends AutoComp<ItemContainerData> {}

private class ItemContainerData {
	public var item: Option<Entity> = None;

	public function new() {
	}
}
