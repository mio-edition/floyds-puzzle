package floyds;

import kex.notifications.*;

class NotificationService extends ecx.System {
    var assets: Wire<AssetService>;
    var composer: Wire<Composer>;
    var ui: NotificationUi;

    public function new() {
    }

   public function watch<T>( o: Outcome<T, Error> ) {
        switch o {
            case Success(_):
            case Failure(err):
                error(Std.string(err));
        }
    }

    public function error( msg: String )
        ui.error(msg);

    override function initialize() {
        assets.fonts.get('inconsolata-bold.ttf', { scope: 'notifications' })
            .handle(function( o ) switch o {
                case Success(fnt):
                    ui = new NotificationUi({ font: fnt, fontSize: 16, traceErrors: true });
                    composer.notify(ui.render, 1000);
                case Failure(err):
                    trace(err);
            });
    }
}
