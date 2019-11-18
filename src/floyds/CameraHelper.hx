package floyds;

import ecx.types.EntityVector;
import kha.math.FastMatrix3;
import kha.math.FastVector2;
import kha.math.FastVector3;

class CameraHelper extends ecx.System {
	var _position: Wire<Position>;
	var _viewport: Wire<Viewport>;

	public function new() {
	}

	public function screenCoordinatesToViewport( cameras: EntityVector, x: Int, y: Int ) : Null<Entity> {
		for (obj in cameras) {
			var vp = _viewport.get(obj);

			if (x >= vp.left && x <= vp.left + vp.width && y >= vp.top && y <= vp.top + vp.height) {
				return obj;
			}
		}

		return null;
	}

	static var _t = FastMatrix3.identity();

	// screen to world
	public function unproject( camera: Entity, x: Int, y: Int ) : FastVector3 {
		final vp = _viewport.get(camera);
		final pos = _position.get(camera);
		final scalefactor = vp.scaleFactor;
		final ccenter = FastMatrix3.translation(-vp.width / 2, -vp.height / 2);
		final csc = FastMatrix3.scale(1 / scalefactor, 1 / scalefactor);
		final cp = FastMatrix3.translation(pos.x, pos.y);
		_t.setFrom(cp.multmat(csc).multmat(ccenter));
		final t = _t.multvec(new FastVector2(x, y));
		final p = new FastVector3(t.x , t.y );
		return p;
	}
}
