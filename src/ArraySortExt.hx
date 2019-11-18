package;

class ArraySortExt {
	// TODO (DK) propose for inclusion in official haxe.ds.ArraySort?
	static public inline function sortRange<T>(a:Array<T>, cmp:T->T->Int, pos:Int, ?len:Int) {
		@:privateAccess haxe.ds.ArraySort.rec(a, cmp, pos, len == null ? a.length : pos + len);
	}
}
