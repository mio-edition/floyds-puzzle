package floyds.io;

import kex.io.*;

class GuiIO extends GenericIO<GuiData> {
	var blobs: BlobIO;

	public function new( blobs: BlobIO ) {
		super('gui');
		this.blobs = blobs;
	}

	override function onResolve( url, ?opts )
		return blobs.get(url, opts)
			.next(blob -> (tink.Json.parse(blob.toString()) : GuiData));
}
