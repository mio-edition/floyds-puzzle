package floyds;

import kha.math.FastMatrix3;
import kha.Canvas;
import kha.Color;

class GuiTextRenderer extends ecx.System {
	var models: Family<GuiObject, Position, FontAsset, MenuText>;
	var cameras: Family<CameraProjection, GuiObject, Viewport>;
	var _font: Wire<FontAsset>;
	var _position: Wire<Position>;
	var _viewport: Wire<Viewport>;
	var _text: Wire<MenuText>;

	public function new( register: ((Canvas -> Void), Int) -> Void ) {
		register(draw, 3);
	}

	function draw( canvas: Canvas ) {
		final g2 = canvas.g2;

		for (camera in cameras) {
			final scalefactor = _viewport.get(camera).scaleFactor;
			final ccenter = FastMatrix3.translation((canvas.width / scalefactor) / 2, (canvas.height / scalefactor) / 2);
			final csc = FastMatrix3.scale(scalefactor, scalefactor);
			g2.pushTransformation(csc.multmat(ccenter));
			g2.color = kha.Color.Black;

			for (eText in models) {
				final pos = _position.get(eText);
				final fnt = _font.get(eText);
				final text = _text.get(eText);
				g2.font = fnt.font;
				g2.fontSize = text.fontSize;
				g2.drawString(text.text, pos.x, pos.y);
			}

			g2.color = kha.Color.White;
			g2.popTransformation();
		}
	}
}
