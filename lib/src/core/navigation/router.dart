import 'package:go_router/go_router.dart';
import 'package:hasnetix/src/core/index.dart' show NotFoundView, RouteNames;
import 'package:hasnetix/src/features/auth/presentation/auth_view.dart';

class AppRouter {
  GoRouter router = GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        name: RouteNames.login,
        builder: (_, _) => AuthView(),
      ),
    ],
    errorBuilder: (_, _) => NotFoundView(),
  );
}
