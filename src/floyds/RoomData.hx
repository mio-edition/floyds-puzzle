package floyds;

typedef RoomData = {
	final width: Float;
	final height: Float;
	final ?clearColor: String;
	final itempool: Array<EntityData>;
	final entities: Array<EntityData>;
}
