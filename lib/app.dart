import 'package:flutter/material.dart';
import 'package:hasnetix/src/common/index.dart';
import 'package:hasnetix/src/core/index.dart' show AppRouter;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter().router,
      theme: Theme.of(
        context,
      ).copyWith(scaffoldBackgroundColor: AppColors.background),
    );
  }
}
