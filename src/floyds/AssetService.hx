package floyds;

import kex.io.*;
import floyds.io.*;

class AssetService extends ecx.Service {
	public final gui: GuiIO;
	public final room: RoomIO;

	public final tpjsaa: TpjsaaIO;
	public final fonts = new FontIO();
	public final images = new ImageIO();
	public final scml: ScmlIO;
	public final sounds = new SoundIO();

	final blobs = new BlobIO();

	public function new() {
		gui = new GuiIO(blobs);
		room = new RoomIO(blobs);

		tpjsaa = new TpjsaaIO(blobs, images);
		scml = new ScmlIO(blobs);
	}
}
