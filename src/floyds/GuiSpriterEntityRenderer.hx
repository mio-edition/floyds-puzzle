package floyds;

import kha.math.FastMatrix3;
import kha.Canvas;
import kha.Color;

class GuiSpriterEntityRenderer extends ecx.System {
	var models: Family<GuiObject, Position, SpriterModel, Visibility>;
	var cameras: Family<CameraProjection, GuiObject, Viewport>;
	var _sm: Wire<SpriterModel>;
	var _position: Wire<Position>;
	var _viewport: Wire<Viewport>;
	var _visibility: Wire<Visibility>;
	var doh: Wire<DrawOrderHelper>;

	final BaseHeight: Int;

	final _t = FastMatrix3.identity();
	final _sorted: Array<Entity> = [for (i in 0...64) Entity.NULL];
	var _sortFn = null;

	public function new( register: ((Canvas -> Void), Int) -> Void, baseHeight: Int ) {
		register(draw, 2);
		this.BaseHeight = baseHeight;
	}

	override function initialize() {
		_sortFn = doh.sort;
	}

	function draw( canvas: Canvas ) {
		final g2 = canvas.g2;

		for (camera in cameras) {
			final scalefactor = _viewport.get(camera).scaleFactor;
			final ccenter = FastMatrix3.translation((canvas.width / scalefactor) / 2, (canvas.height / scalefactor) / 2);
			final csc = FastMatrix3.scale(scalefactor, scalefactor);
			_t.setFrom(csc.multmat(ccenter));

			for (i in 0...models.length) {
				_sorted[i] = models.get(i);
			}

			ArraySortExt.sortRange(_sorted, _sortFn, 0, models.length);
			g2.pushTransformation(FastMatrix3.identity());

			for (i in 0...models.length) {
				final eModel = _sorted[i];

				if (_visibility.get(eModel).visible) {
					final pos = _position.get(eModel);
					final sm = _sm.get(eModel);
					SpriterModelG2Renderer.drawSpriter(g2, sm.atlas, sm.instance, _t, pos.x, pos.y, 0);
				}
			}

			g2.popTransformation();
		}
	}
}
