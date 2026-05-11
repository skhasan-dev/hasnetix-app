import 'package:flutter/material.dart';
import 'package:hasnetix/src/config/index.dart' show getApiConfig, FlavorConfig;

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

Future<void> _preInit(Flavor flavor) async {}
