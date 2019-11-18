package floyds;

import kex.TextureAtlas;
import kha.math.FastMatrix3;
import kha.math.FastVector2;
import kex.math.AABB;
import spriter.EntityInstance;

class SpriterAABBCalculator {
	static var _m = FastMatrix3.identity();

	public static function updateAABB( entity: EntityInstance, atlas: TextureAtlas, aabb: AABB, scale: Float ) : AABB {
		aabb.setNull();

		final sprites = entity.sprites;
		var current = sprites.start;

		while (current < sprites.top) {
			final folderId = sprites.folderId(current);
			final fileId = sprites.fileId(current);
			final filename = entity.getFilename(folderId, fileId);
			final subImage = atlas.get(filename);

			if (subImage == null) {
				trace('can not find subImage for "${filename}"');
				current += sprites.structSize;
				continue;
			}

			final pivotX = sprites.pivotX(current);
			final pivotY = sprites.pivotY(current);
			final frameWidth = subImage.fw;
			final frameHeight = subImage.fh;
			final originX = pivotX * frameWidth;
			final originY = (1 - pivotY) * frameHeight;
			final locationX = sprites.x(current) * scale;
			final locationY = sprites.y(current) * scale;
			final scaleX = sprites.scaleX(current) * scale;
			final scaleY = sprites.scaleY(current) * scale;
			final angle = sprites.angle(current);
			final subWidth = subImage.sw;
			final subHeight = subImage.sh;

			final rot = FastMatrix3.rotation(angle);
			final loc = FastMatrix3.translation(locationX, locationY);
			final sc = FastMatrix3.scale(scaleX, scaleY);
			final org = FastMatrix3.translation(-originX, -originY);

			_m.setFrom(loc.multmat(rot.multmat(sc).multmat(org)));

			final dx = 0;
			final dy = 0;
			final w = subWidth;
			final h = subHeight;
			final tl = _m.multvec(new FastVector2(dx, dy));
			final  bl = _m.multvec(new FastVector2(dx, dy + h));
			final br = _m.multvec(new FastVector2(dx + w, dy + h));
			final tr = _m.multvec(new FastVector2(dx + w, dy));

			aabb.setFromOther(aabb.extendByVectorComponents(bl.x, bl.y, 0));
			aabb.setFromOther(aabb.extendByVectorComponents(tl.x, tl.y, 0));
			aabb.setFromOther(aabb.extendByVectorComponents(tr.x, tr.y, 0));
			aabb.setFromOther(aabb.extendByVectorComponents(br.x, br.y, 0));

			current += sprites.structSize;
		}

		return aabb;
	}
}
