package floyds;

import kha.Canvas;
import kha.Color;
import kha.Framebuffer;
import kha.Image;

class Composer extends ecx.Service {
	var callbacks: Array<{
		cb: Canvas -> Void,
		priority: Int,
	}> = [];

	var g2callbacks: Array<{
		cb: Canvas -> Void,
		priority: Int,
	}> = [];

	var rt: Image;
	var ww: Int;
	var wh: Int;

	public var clearColor = Color.Red;

	public function new( opts: { buffered: Bool, screenWidth: Int, screenHeight: Int } ) {
		if (opts.buffered) {
			rt = Image.createRenderTarget(opts.screenWidth, opts.screenHeight);
		}

		ww = opts.screenWidth;
		wh = opts.screenHeight;

		kha.System.notifyOnFrames(onFrames);
	}

	public function notify( cb: Canvas -> Void, priority = 0 ) {
		callbacks.push({ cb: cb, priority: priority });
		callbacks.sort(( a, b ) -> a.priority - b.priority); // TODO (DK) stable sort?
	}

	public function notify2d( cb: Canvas -> Void, priority = 0 ) {
		g2callbacks.push({ cb: cb, priority: priority });
		g2callbacks.sort(( a, b ) -> a.priority - b.priority); // TODO (DK) stable sort?
	}

	function onFrames( fbs: Array<Framebuffer> ) {
		final fb = fbs[0];
		final buf = rt != null ? rt : fb;

		for (l in callbacks) {
			l.cb(buf);
		}

		var g2 = buf.g2;

		g2.begin(true, clearColor);
			g2.imageScaleQuality = High; // TODO (DK) optional, inject via opts in ctor?

			for (l in g2callbacks) {
				l.cb(buf);
			}
		g2.end();

		if (rt != null) {
			g2 = fb.g2;

			g2.begin(true, Color.Magenta);
				kha.Scaler.scale(rt, fb, kha.System.screenRotation);
			g2.end();
		}
	}
}
