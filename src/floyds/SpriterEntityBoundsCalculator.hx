package floyds;

class SpriterEntityBoundsCalculator extends ecx.System {
    var objects: Family<AABB, SpriterAABBQuery, SpriterModel>;
    var _sm: Wire<SpriterModel>;
    var _b: Wire<AABB>;
    var _query: Wire<SpriterAABBQuery>;

    public function new() {
    }

    override function update() {
        for (e in objects) {
            var m = _sm.get(e);
            var b = _b.get(e);
            SpriterAABBCalculator.updateAABB(m.instance, m.atlas, b, m.scale);
            _query.destroy(e);
            world.commit(e);
        }
    }
}
