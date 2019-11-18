package floyds;

import kex.TextureAtlas;
import spriter.EntityInstance;

class SpriterModel extends ecx.AutoComp<SpriterModelData> {}

private class SpriterModelData {
	public var instance: EntityInstance;
	public var atlas: TextureAtlas;
	public var scale = 1.0;

	// TODO (DK) this is only use during Item -> Slot mapping, refactor somehow?
	public var scmlName = '';
	public var atlasName = '';
	public var entityName = '';

	public function new() {
	}
}
