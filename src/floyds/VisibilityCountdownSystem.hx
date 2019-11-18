package floyds;

class VisibilityCountdownSystem extends ecx.System {
    var items: Family<Visibility>;
    var _visibility: Wire<Visibility>;

    public function new() {
    }

    override function update() {
        for (e in items) {
            final vis = _visibility.get(e);

            if (vis.countdown > 0) {
                vis.countdown -= 1;

                if (vis.countdown == 0) {
                    vis.visible = true;
                }
            }
        }
    }
}
