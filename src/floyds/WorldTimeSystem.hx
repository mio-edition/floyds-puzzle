package floyds;

class WorldTimeSystem extends ecx.System {
    public var deltaTime(default, null) = 0.0;
    public var totalTime(default, null) = 0.0;
    public var tick(default, null) = 0;

    var startTime: Float;
    var lastTime: Float;
    var paused = false;

    public function new() {
    }

    public function pause() {
        paused = true;
    }

    public function resume() {
        paused = false;
    }

    override function initialize() {
        lastTime = startTime = _now();
    }

    override function update() {
        if (paused) {
            return;
        }

        var now = _now();
        deltaTime = now - lastTime;
        totalTime = now - startTime;
        tick += 1;
        lastTime = now;
    }

    inline function _now()
        return kha.Scheduler.time();
}
