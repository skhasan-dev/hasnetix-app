import 'package:flutter/material.dart';
import 'package:hasnetix/src/core/index.dart' show RouteNames;

enum NavItem {
  home(
    label: 'Home',
    selectedIcon: Icons.home,
    unSelectedIcon: Icons.home_outlined,
  ),
  hub(
    label: 'Hub',
    selectedIcon: Icons.data_saver_on_sharp,
    unSelectedIcon: Icons.data_saver_on_sharp,
  ),
  notification(
    label: 'Notification',
    selectedIcon: Icons.notifications_active,
    unSelectedIcon: Icons.notifications_outlined,
  ),
  profile(
    label: 'Profile',
    selectedIcon: Icons.person,
    unSelectedIcon: Icons.person_outlined,
  );

  const NavItem({
    required this.label,
    required this.selectedIcon,
    required this.unSelectedIcon,
  });

  final String label;
  final IconData selectedIcon;
  final IconData unSelectedIcon;

  static String path(NavItem item) {
    switch (item) {
      case NavItem.home:
        return RouteNames.home;
      case NavItem.hub:
        return RouteNames.hub;
      case NavItem.notification:
        return RouteNames.notification;
      case NavItem.profile:
        return RouteNames.profile;
    }
  }
}
