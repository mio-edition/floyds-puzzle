package floyds;

class PlayerState extends AutoComp<PlayerStateData> {}

private class PlayerStateData {
	public var action: PlayerAction;
	public var facing: PlayerFacing;

	public var lastAction: PlayerAction;
	public var lastFacing: PlayerFacing;

	public var containerInProximity: Null<Entity> = null;

	public function new() {
	}
}
