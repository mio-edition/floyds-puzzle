package floyds;

import kex.TextureAtlas;
import kha.math.FastMatrix3;
import spriter.EntityInstance;

class SpriterModelG2Renderer {
	public static function drawSpriter( g2: kha.graphics2.Graphics, atlas: TextureAtlas, entity: EntityInstance, t: FastMatrix3, x: Float, y: Float, z: Int ) {
		final sprites = entity.sprites;
		var current = sprites.start;

		while (current < sprites.top){
			final folderId = sprites.folderId(current);
			final fileId = sprites.fileId(current);
			final filename = entity.getFilename(folderId, fileId);
			final subImage = atlas.get(filename);

			if (subImage == null) {
				current += entity.sprites.structSize;
				continue;
			}

			final pivotX = sprites.pivotX(current);
			final pivotY = sprites.pivotY(current);
			final locX = sprites.x(current);
			final locY = sprites.y(current);
			final width = subImage.fw;
			final height = subImage.fh;
			final originX = pivotX * width;
			final originY = (1.0 - pivotY) * height;
			final locationX = locX + x;
			final locationY = -locY + y;
			final scaleX = sprites.scaleX(current);
			final scaleY = sprites.scaleY(current);
			final angle = -sprites.angle(current);
			final subWidth = subImage.sw;
			final subHeight = subImage.sh;

			final rot = FastMatrix3.rotation(angle);
			final loc = FastMatrix3.translation(locationX, locationY);
			final sc = FastMatrix3.scale(scaleX, scaleY);
			final org = FastMatrix3.translation(-originX, -originY);

			g2.transformation.setFrom(t.multmat(loc.multmat(rot.multmat(sc).multmat(org))));
			g2.drawScaledSubImage(subImage.image, subImage.sx, subImage.sy, subWidth, subHeight, 0, 0, subWidth, subHeight);

			current += entity.sprites.structSize;
		}
	}
}
