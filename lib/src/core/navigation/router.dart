import 'package:go_router/go_router.dart';
import 'package:hasnetix/src/core/index.dart'
    show
        NotFoundView,
        RouteNames,
        customTransitionGoRoute,
        ScaffoldWithNavBar,
        NavigationRepository,
        getIt,
        SecretRepo,
        AppStateProvider;
import 'package:hasnetix/src/features/auth/index.dart' show AuthView;
import 'package:hasnetix/src/features/home/index.dart' show HomeView;
import 'package:hasnetix/src/features/hub/index.dart' show HubView;
import 'package:hasnetix/src/features/notification/index.dart'
    show NotificationView;
import 'package:hasnetix/src/features/profile/index.dart' show ProfileView;
import 'package:hasnetix/src/features/splash/index.dart' show SplashView;

GoRouter appRouter = GoRouter(
  initialLocation: '/splash',
  routes: [
    customTransitionGoRoute(
      name: RouteNames.splash,
      path: '/splash',
      pageBuilder: (context, state) => SplashView(
        next: (contex) async {
          Future.delayed(const Duration(seconds: 2), () async {
            try {
              final authToken = await SecretRepo.getString('auth_token');
              final userId = await SecretRepo.getString('auth_user_id');
              if (!context.canPop()) {
                if (authToken == null && userId == null) {
                  await SecretRepo.clearAll();
                  context.goNamed(RouteNames.login);
                } else {
                  final appStateProvider = getIt<AppStateProvider>();
                  await appStateProvider.getUserDetails();
                  // await appStateProvider.init();
                  context.goNamed(RouteNames.home);
                }
                return;
              }
            } catch (e) {
              context.goNamed(RouteNames.login);
              return;
            }
          });
        },
      ),
      routes: [
        customTransitionGoRoute(
          path: 'login',
          name: RouteNames.login,
          pageBuilder: (_, _) => AuthView(),
        ),
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) =>
              ScaffoldWithNavBar(navigationShell: navigationShell),
          branches: [
            StatefulShellBranch(
              navigatorKey: getIt<NavigationRepository>().shellNavigatorAKey,
              routes: [
                customTransitionGoRoute(
                  name: RouteNames.home,
                  path: 'home',
                  pageBuilder: (context, state) => HomeView(),
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: getIt<NavigationRepository>().shellNavigatorBKey,
              routes: [
                customTransitionGoRoute(
                  name: RouteNames.hub,
                  path: 'hub',
                  pageBuilder: (context, state) => HubView(),
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: getIt<NavigationRepository>().shellNavigatorCKey,
              routes: [
                customTransitionGoRoute(
                  name: RouteNames.notification,
                  path: 'notification',
                  pageBuilder: (context, state) => NotificationView(),
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: getIt<NavigationRepository>().shellNavigatorDKey,
              routes: [
                customTransitionGoRoute(
                  name: RouteNames.profile,
                  path: 'profile',
                  pageBuilder: (context, state) => ProfileView(),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
  errorBuilder: (_, _) => NotFoundView(),
);
