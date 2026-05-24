import 'dart:ui';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:hasnetix/src/config/index.dart'
    show getApiConfig, FlavorConfig, initializeFirebaseApp;
import 'package:hasnetix/src/core/index.dart';

import 'app.dart';

enum Flavor { stage, prod }

Future<void> bootstrap(Flavor flavor) async {
  WidgetsFlutterBinding.ensureInitialized();
  await _preInit(flavor);
  await _init(flavor);

  runApp(const App());
}

Future<void> _init(Flavor flavor) async {
  final apiConfig = getApiConfig(flavor);

  FlavorConfig(flavor: flavor, baseMobileUrl: apiConfig.baseUrl);
}

Future<void> _preInit(Flavor flavor) async {
  try {
    await initializeFirebaseApp(flavor);

    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

    PlatformDispatcher.instance.onError = (error, stack) {
      catchUnhandledExceptions(error, stack);
      return true;
    };
  } finally {
    initDependencyLocator();
    await getIt.allReady();
  }
}

void catchUnhandledExceptions(Object error, StackTrace? stack) {
  FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
}
