package floyds.io;

import kex.io.*;

class RoomIO extends GenericIO<RoomData> {
	var blobs: BlobIO;

	public function new( blobs: BlobIO ) {
		super('room');
		this.blobs = blobs;
	}

	override function onResolve( url, ?opts )
		return blobs.get(url, opts)
			.next(blob -> (tink.Json.parse(blob.toString()) : RoomData));
}
