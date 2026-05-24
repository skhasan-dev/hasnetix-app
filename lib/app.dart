import 'package:flutter/material.dart';
import 'package:hasnetix/src/common/index.dart' show AppColors;
import 'package:hasnetix/src/core/index.dart'
    show appRouter, getIt, AppStateProvider;
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppStateProvider>.value(
      value: getIt<AppStateProvider>(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter,
        theme: Theme.of(
          context,
        ).copyWith(scaffoldBackgroundColor: AppColors.background),
      ),
    );
  }
}
