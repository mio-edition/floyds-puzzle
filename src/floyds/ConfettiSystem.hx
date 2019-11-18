package floyds;

import kha.Canvas;
import kha.Color;
import kha.Image;

class ConfettiSystem extends ecx.System {
	var particles: Family<Confetti>;
	var _confetti: Wire<Confetti>;

	var colors = [
		Color.fromBytes(41, 171, 226),
		Color.fromBytes(63, 108, 175),
		Color.fromBytes(249, 115, 183),
		Color.fromBytes(255, 255, 255),
		Color.fromBytes(249, 104, 40),
		Color.fromBytes(252, 238, 33),
		Color.fromBytes(128, 249, 131),
	];

	var shape: Image;
	var spawning = false;
	final ParticleCount = 128;
	final BaseHeight: Int;

	public function new( register: ((Canvas -> Void), Int) -> Void, baseHeight: Int ) {
		register(draw, 11);
		this.BaseHeight = baseHeight;
	}

	override function initialize() {
		shape = Image.createRenderTarget(32, 32);
		shape.g2.begin(true, Color.Transparent);
		shape.g2.color = Color.White;
		kha.graphics2.GraphicsExtension.fillCircle(shape.g2, 16, 16, 16, 12);
		shape.g2.end();

		for (i in 0...ParticleCount) {
			final e = world.create();
			final p = _confetti.create(e);
		}
	}

	public function start() {
		spawning = true;

		for (eParticle in particles) {
			final p = _confetti.get(eParticle);
			p.speed = 1 + Math.random() * 3;
			p.x = Math.random() * kha.System.windowWidth();//BaseHeight; // TODO (DK)
			p.y = Math.random() * -BaseHeight; // TODO (DK)
			p.dx = -0.1;
			p.dy = 2;
			p.colorIndex = Std.random(colors.length);
			p.active = true;
		}
	}

	public function stop() {
		spawning = false;

		for (eParticle in particles) {
			final p = _confetti.get(eParticle);
			p.active = false;
		}
	}

	override function update() {
		if (!spawning) {
			return;
		}

		for (eParticle in particles) {
			final p = _confetti.get(eParticle);

			if (p.active) {
				if (p.y + 16 < kha.System.windowHeight()) {
					p.x += p.speed * p.dx + Math.random() - 0.5;
					p.y += p.speed * p.dy;
				} else if (spawning) {
					p.active = false;
					p.x = Math.random() * kha.System.windowWidth(); // TODO (DK)
					p.y = Math.random() * -100; // TODO (DK)
				}
			}
		}
	}

	function draw( canvas: Canvas ) {
		final g2 = canvas.g2;

		if (!spawning) {
			return;
		}

		for (eParticle in particles) {
			final p = _confetti.get(eParticle);

			if (p.active) {
				g2.color = colors[p.colorIndex];
				g2.drawImage(shape, p.x, p.y);
			}
		}

		g2.color = Color.White;
	}
}
