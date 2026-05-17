import 'package:flutter/material.dart';
import 'package:hasnetix/src/common/index.dart' show AppColors;
import 'package:hasnetix/src/core/index.dart' show appRouter;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme: Theme.of(
        context,
      ).copyWith(scaffoldBackgroundColor: AppColors.background),
    );
  }
}
