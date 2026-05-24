import 'package:flutter/material.dart';

class NavigationRepository {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  final GlobalKey<OverlayState> overlayKey = GlobalKey<OverlayState>();

  // These depends on the no. of tabs we have in the BottomNavBar.
  final GlobalKey<NavigatorState> shellNavigatorAKey =
      GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> shellNavigatorBKey =
      GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> shellNavigatorCKey =
      GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> shellNavigatorDKey =
      GlobalKey<NavigatorState>();

  BuildContext? get context => navigatorKey.currentContext;
}
