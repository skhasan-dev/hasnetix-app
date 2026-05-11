import 'package:go_router/go_router.dart';
import 'package:hasnetix/src/core/index.dart' show NotFoundView;

class AppRouter {
  GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [],
    errorBuilder: (_, _) => NotFoundView(),
  );
}
