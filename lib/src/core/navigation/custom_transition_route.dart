import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

GoRoute customTransitionGoRoute({
  required String path,
  required Widget Function(BuildContext, GoRouterState) pageBuilder,
  GlobalKey<NavigatorState>? parentNavigatorKey,
  String? name,
  List<RouteBase> routes = const [],
}) {
  return GoRoute(
    name: name,
    path: path,
    parentNavigatorKey: parentNavigatorKey,
    pageBuilder: (context, state) => CustomTransitionPage<void>(
      key: state.pageKey,
      child: pageBuilder(context, state),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: CurveTween(curve: Curves.easeOut).animate(animation),
          child: child,
        );
      },
    ),
    routes: routes,
  );
}
