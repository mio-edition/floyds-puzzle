package floyds;

import kex.input.Result;

private enum Transition {
	None;
	FromTo( from: Null<StackNavigatorItem>, to: StackNavigatorItem );
	InProgress;
}

class StackNavigator extends ecx.System {
	var f: Wire<Factory>;
	var n: Wire<NotificationService>;
	var curtain: Wire<CurtainSystem>;
	var input: Wire<InputService>;

	var items: Array<StackNavigatorItem> = []; // TODO (DK) should these be a component of some sort of GameState entity?
	var transition = Transition.None;

	final CanStopApp: Bool;

	public function new( opts: { canStopApp: Bool } ) {
		CanStopApp = opts.canStopApp;
	}

	public function push( item: StackNavigatorItem ) {
		switch transition {
			case None:
				curtain.appear();
				input.pause();
				final from = items.length > 0 ? items[items.length - 1] : null;
				transition = FromTo(from, item);
				items.push(item);
			case FromTo(_, _), InProgress:
				trace('transition in progress');
		}
	}

	public function pop() {
		switch transition {
			case None:
				if (items.length >= 2) {
					curtain.appear();
					input.pause();
					final from = items.pop();
					final to = items[items.length - 1];
					transition = FromTo(from, to);
				} else {
					if (CanStopApp) {
						kha.System.stop();
					}
				}
			case FromTo(_, _), InProgress:
				trace('transition in progress');
		}
	}

	// public function processMouseEvent( _ )
	// 	return transition == None ? Ignore : SwallowEvent;

	// public function processKeyEvent( _ )
	// 	return transition == None ? Ignore : SwallowEvent;

	override function update() {
		switch transition {
			case FromTo(from, to):
				if (curtain.opacity >= 1) {
					if (from != null) {
						unloadItem(from);
					}

					transition = InProgress;

					loadItem(to).handle(onLoaded);
				}
			case None, InProgress:
		}
	}

	function onLoaded( o ) switch o {
		case Success(_):
			curtain.disappear().handle(function(_) {
				input.resume();
			});
			transition = None;
		case Failure(err):
			n.error(Std.string(err));
	}

	function unloadItem( item: StackNavigatorItem ) {
		switch item {
			case Gui(id): f.destroyGuiScope(id);
			case Room(id): f.destroyRoomScope(id);
		}
	}

	function loadItem( item: StackNavigatorItem )
		return switch item {
			case Gui(id): f.loadGui(id);
			case Room(id): f.loadRoom(id);
		}
}
