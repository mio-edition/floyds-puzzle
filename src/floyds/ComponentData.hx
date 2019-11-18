package floyds;

enum ComponentData {
	AutoViewport;
	OrthoCamera( zoom: Float );
	TrackerTarget( id: Int );
	Tracker( id: Int, trackX: Bool, trackY: Bool );

	BubbleTag( id: Int );
	BubbleOwner( id: Int );

	InventorySlot( index: Int ); // auto AnimationController component
	ItemContainer;
	ItemOfInterest( index: Int ); // TODO (DK) rename TargetItem?

	ItemSlotSoundEffect( sound: String ); // TODO (DK) good design?

	NavAgent( speed: Float );

	MenuButton( actions: Array<MenuButtonAction> );
	MenuToggle( action: MenuToggleAction );

	PlayerState( action: PlayerAction, facing: PlayerFacing ); // auto Inventory

	Position( x: Float, y: Float );

	// SoundEvent( id: String );

	DrawOrder( kind: DrawOrderKind );
	SpriterModel( scml: String, atlas: String, entityName: String );
	SpriterAnimation( ?name: String ); // auto AnimationController component
	SpriterAABBQuery; // auto AABB component

	MenuText( text: String, fontSize: Int );
	FontAsset( url: String );
}
