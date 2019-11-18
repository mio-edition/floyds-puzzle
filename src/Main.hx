package;

class Main {
	public static function main() {
		// kha.System.start({ width: 160, height: 100, window: { x: 2300, y: 3000 }}, function( _ ) {
		kha.System.start({ title: "Floyd's Puzzle", width: 1366, height: 768 }, function( _ ) {
			floyds.Client.bootstrap();
		});
	}
}
