import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hasnetix/src/core/index.dart'
    show FirebaseMessagingService, getIt;

class SplashViewModel extends ChangeNotifier {
  SplashViewModel(BuildContext context, this.next) {
    init(context);
  }

  final void Function(BuildContext context)? next;

  void init(BuildContext context) {
    getIt<FirebaseMessagingService>().init();
    SchedulerBinding.instance.addPostFrameCallback((timestamp) {
      next?.call(context);
    });
  }
}
