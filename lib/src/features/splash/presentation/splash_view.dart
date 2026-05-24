import 'package:flutter/material.dart';
import 'package:hasnetix/src/common/index.dart' show AppColors;
import 'package:hasnetix/src/features/splash/index.dart' show SplashViewModel;
import 'package:provider/provider.dart';

class SplashView extends StatelessWidget {
  const SplashView({required this.next, super.key});

  final void Function(BuildContext context)? next;

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    lazy: false,
    create: (context) => SplashViewModel(context, next),
    builder: (context, child) => child!,
    child: Scaffold(
      body: Center(
        child: Icon(Icons.share, size: 48, color: AppColors.primary),
      ),
    ),
  );
}
