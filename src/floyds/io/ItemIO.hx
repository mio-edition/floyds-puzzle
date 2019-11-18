package floyds.io;

import kex.io.*;

class ItemIO extends GenericIO<ItemData<Event>> {
	var blobs: BlobIO;

	public function new( blobs: BlobIO ) {
		super('item');
		this.blobs = blobs;
	}

	override function onResolve( scope: String, path: String, file: String )
		return blobs.get(scope, path, file)
			.next(blob -> (tink.Json.parse(blob.toString()) : ItemData<Event>));
}
