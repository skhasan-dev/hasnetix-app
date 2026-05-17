import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hasnetix/src/common/index.dart' show AppUtils;
import 'package:hasnetix/src/core/index.dart' show BottomNavBar;

class ScaffoldWithNavBar extends StatelessWidget {
  const ScaffoldWithNavBar({required this.navigationShell, Key? key})
    : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));

  /// The navigation shell and container for the branch Navigators.
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) =>
          AppUtils.showExitDialog(context),
      canPop: false,
      child: Scaffold(
        body: navigationShell,
        bottomNavigationBar: BottomNavBar(
          currentIndex: navigationShell.currentIndex,
          onTap: (index) => _onTap(context, index),
        ),
      ),
    );
  }

  void _onTap(BuildContext context, int index) {
    // if (index == 1) {
    //   getIt<AppStateProvider>().resetNewNotificationCount();
    //   // Checks if the Notification View has been visited at-least once. As,
    //   // first time it'll automatically fetch new notifications.
    //   final hasNotificationBaseWidget =
    //       navigationShell.route.branches[1].navigatorKey.currentWidget;
    //   if (hasNotificationBaseWidget != null) {
    //     getIt<NotificationViewModel>()
    //       ..getNotifications(notifyListeners: true)
    //       ..getUnReadNotifications(notifyListeners: true);
    //   }
    // }

    final currentNavigator = navigationShell
        .route
        .branches[navigationShell.currentIndex]
        .navigatorKey
        .currentState;
    if (currentNavigator != null && currentNavigator.canPop()) {
      currentNavigator.popUntil((route) => route.isFirst);
    }

    // Switch to the new branch and reset to its base route
    navigationShell.goBranch(index, initialLocation: true);
  }
}
