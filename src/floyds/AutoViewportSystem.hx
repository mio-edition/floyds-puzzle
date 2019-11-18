package floyds;

class AutoViewportSystem extends ecx.System {
	var viewports: Family<Viewport, AutoViewport>;
	var _viewport: Wire<Viewport>;

	public function new() {
	}

	override function update() {
		// TODO (DK) do it while rendering and use framebuffer-size instead of window-size?
		var width = kha.System.windowWidth();
		var height = kha.System.windowHeight();

		for (obj in viewports) {
			var vp = _viewport.get(obj);
			vp.left = 0;
			vp.top = 0;
			vp.width = width;
			vp.height = height;

			vp.scaleFactor = /*canvas.*/height / 1080; // TODO (DK) don't hardcode height, pass in ctor
		}
	}
}
