package floyds;

import kha.Color;
import kha.Canvas;
import kha.math.FastMatrix3;

class CurtainSystem extends ecx.System {
	public var opacity(default, null) = 1.0;
	var color = Color.Black;
	var progress = 0.0;
	var t: FutureTrigger<Noise>;

	public function new( register: ((Canvas -> Void), Int) -> Void ) {
		register(draw, 12);
	}

	public function appear() {
		t = Future.trigger();
		progress = 0.05;
		return t;
	}

	public function disappear() {
		t = Future.trigger();
		progress = -0.05;
		return t;
	}

	override function update() {
		if (progress > 0) {
			opacity += progress;

			if (opacity >= 1) {
				opacity = 1;
				progress = 0;
				t.trigger(Noise);
			}
		}

		if (progress < 0) {
			opacity += progress;

			if (opacity <= 0) {
				opacity = 0;
				progress = 0;
				t.trigger(Noise);
			}
		}
	}

	function draw( canvas: Canvas ) {
		final g2 = canvas.g2;

		if (opacity != 0) {
			g2.color = color;
			g2.opacity = opacity;
			g2.fillRect(0, 0, canvas.width, canvas.height);
			g2.opacity = 1;
			g2.color = Color.White;
		}
	}
}
