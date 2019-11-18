const fs = require('fs');

let project = new Project("Floyds Puzzle");

project.localLibraryPath = 'libs';

project.addTarget('google-play', 'android-native', ['android-native']);

project.addParameter('-dce full');
project.addDefine('analyzer_optimize');

switch (platform) {
	case 'flash':
		// project.addDefine('fdb');
		project.addDefine('advanced-telemetry');
		project.addParameter('--no-traces');
		break;
	case 'debug-html5':
		project.addDefine('js-es=6');
		project.addDefine('enable_debug_keys');
		project.addDefine('error_stack')
		break;
	case 'google-play':
		project.addDefine('kha_no_ogg');

		const android = project.targetOptions.android_native;
		android.package = 'de.mioedition.floydspuzzle';
		android.versionCode = 1;
		android.versionName = '1.0';
		android.screenOrientation = 'landscape';
		// android.permissions = ['android.permission.VIBRATE'];
		android.installLocation = "preferExternal";
		android.metadata = [];
		android.disableStickyImmersiveMode = false;//true;
		// android.globalBuildGradlePath = 'data/android/build.gradle';
		// android.buildGradlePath = 'data/android/app/build.gradle';
		// android.proguardRulesPath = 'data/android/app/proguard-rules.pro';
		// for files in Android Studio project-level dir
		android.customFilesPath = 'build-scripts/google-play';
		break;
	default:
		break;
}

// project.addDefine('ecx_debug');
// project.addParameter('--macro kex.io.AssetLog.level(4)');

project.addAssets('assets/**', { notinlist: true, nameBaseDir: 'assets', destination: '{dir}/{name}', name: '{dir}/{name}' });
project.addAssets('res/beach/beach.scml', { notinlist: true });
project.addAssets('res/city/city.scml', { notinlist: true });
project.addAssets('res/inventory/inventory.scml', { notinlist: true });
project.addAssets('res/menu/menu.scml', { notinlist: true });
project.addAssets('res/park/park.scml', { notinlist: true });
project.addAssets('res/floyd/floyd.scml', { notinlist: true });

// project.addAssets(`assets-${platform}`, { notinlist: true });
project.addAssets('assets-dev', { notinlist: true });

project.addLibrary('ecx');
project.addLibrary('ecx-common');
project.addLibrary('haxe-format-tpjsaa');
project.addLibrary('kex-atlas');
project.addLibrary('kex-input');
project.addLibrary('kex-io');
project.addLibrary('kex-math');
project.addLibrary('kex-notifications');
project.addLibrary('kex-tpjsaa-io');
project.addLibrary('kex-spriter-io');
project.addLibrary('spriter');
project.addLibrary('tink_core_ext');
project.addLibrary('tink_json');

project.addSources('src');

resolve(project);
