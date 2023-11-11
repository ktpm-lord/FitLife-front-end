import 'dart:async';
// import 'package:sentry_flutter/sentry_flutter.dart';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:injectable/injectable.dart';

import 'application.dart';
import 'mvvm/data/local/preferences.dart';
import 'core/components/configurations/configurations.dart';
import 'core/dependency_injection/di.dart';
// import 'data/datasource/local/preferences.dart';

class Mutable<T> {
  Mutable(this.value);
  T value;
}

class AppDelegate {
  Future<Widget> build(Map<String, dynamic> environment) async {
    WidgetsFlutterBinding.ensureInitialized();

    Configurations().setConfigurationValues(environment);

    configureDependencies(environment: Environment.prod);
    var isMobile = Configurations.isMobileMode;
    final savedThemeMode = await AdaptiveTheme.getThemeMode();

    return Application(
      navigationKey: GlobalKey<NavigatorState>(),
      providers: const [],
      initialRoute: Routes.splash,
      savedThemeMode: savedThemeMode,
      isMobile: isMobile,
    );
  }

  Future<void> run(Map<String, dynamic> environment) async {
    final app = await build(environment);
    await Preferences.ensureInitedPreferences();
    WidgetsFlutterBinding.ensureInitialized();
    runApp(app);
    // var myValue = Mutable<double>(0.0);

    // await runZonedGuarded(() async {
    //   await Preferences.ensureInitedPreferences();
    //   WidgetsFlutterBinding.ensureInitialized();
    //   // Initialize other stuff here...

    //   await SentryFlutter.init(
    //     (options) {
    //       options.dsn = 'https://example@sentry.io/add-your-dsn-here';
    //     },
    //   );
    //   // or here
    //   runApp(app);
    // }, (exception, stackTrace) async {
    //   await Sentry.captureException(exception, stackTrace: stackTrace);
    // });
    // WidgetsFlutterBinding.ensureInitialized();
    // Zone.current.fork(
    //   zoneValues: {
    //     'myKey': myValue,
    //   },
    // ).run(() {
    //   var newValue = 1.0; // obtain value from plugin
    //   myValue.value = newValue; // update value in Zone
    //   runApp(app);
    // });
    // runZonedGuarded(
    //   () => {runApp(app)},
    //   (error, stack) {
    //     if (kDebugMode) {
    //       //Do nothing
    //     }
    //   },
    // );
  }
}
