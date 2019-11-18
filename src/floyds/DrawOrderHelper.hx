package floyds;

class DrawOrderHelper extends ecx.System {
	var _drawOrder: Wire<DrawOrder>;
	var _position: Wire<Position>;

	public function new() {
	}

	public function sort( lhs: Entity, rhs: Entity ) {
		if (!_drawOrder.has(lhs)) {
			return 1;
		}

		if (!_drawOrder.has(rhs)) {
			return -1;
		}

		final a = _drawOrder.get(lhs);
		final b = _drawOrder.get(rhs);
		final pa = _position.get(lhs);
		final pb = _position.get(rhs);
		final za = switch a.kind {
			case Static(z): z;
			case ByY: pa.y;
		}
		final zb = switch b.kind {
			case Static(z): z;
			case ByY: pb.y;
		}

		return za < zb ? -1 : za > zb ? 1 : 0;
	}
}
