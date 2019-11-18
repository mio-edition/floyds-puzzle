package floyds;

class RNGService extends ecx.Service {
	final impl: kha.math.Random;

	public function new( impl: kha.math.Random ) {
		this.impl = impl;
	}

	public function int( f, t ) {
		return _int(f, t, impl.GetFloat);
	}

	public function shuffle<T>(arr:Array<T>):Array<T> {
		return _shuffle(arr, impl.GetFloat);
	}

// copied from hxRandom or some other library
//	TODO (DK) add proper credits
	public static inline function _int(from:Int, to:Int, rng: Void -> Float):Int {
		return from + Math.floor(((to - from + 1) * rng()));
	}

	public static function _shuffle<T>(arr:Array<T>, rng: Void -> Float):Array<T> {
		if (arr!=null) {
			for (i in 0...arr.length) {
				var j = _int(0, arr.length - 1, rng);
				var a = arr[i];
				var b = arr[j];
				arr[i] = b;
				arr[j] = a;
			}
		}

		return arr;
	}
}