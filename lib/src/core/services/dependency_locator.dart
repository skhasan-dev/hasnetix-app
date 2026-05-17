import 'package:get_it/get_it.dart';
import 'package:hasnetix/src/core/index.dart'
    show
        NetworkService,
        AppStateProvider,
        NavigationRepository,
        FirebaseMessagingService,
        FirebaseCrashlyticsService;
import 'package:hasnetix/src/features/auth/index.dart'
    show AuthDataSource, AuthRepository, AuthDataSourceImpl, AuthRepositoryImpl;
import 'package:hasnetix/src/features/profile/index.dart'
    show
        ProfileDataSource,
        ProfileRepository,
        ProfileDataSourceImpl,
        ProfileRepositoryImpl;

GetIt getIt = GetIt.instance;

Future<void> initDependencyLocator() async {
  getIt
    ..registerLazySingleton<NetworkService>(NetworkService.new)
    ..registerLazySingleton<AppStateProvider>(AppStateProvider.new)
    ..registerLazySingleton<NavigationRepository>(NavigationRepository.new)
    ..registerLazySingleton<FirebaseMessagingService>(
      FirebaseMessagingService.new,
    )
    ..registerLazySingleton<FirebaseCrashlyticsService>(
      FirebaseCrashlyticsService.new,
    )
    ..registerFactory<AuthDataSource>(() => AuthDataSourceImpl())
    ..registerFactory<AuthRepository>(() => AuthRepositoryImpl(getIt()))
    ..registerFactory<ProfileDataSource>(() => ProfileDataSourceImpl())
    ..registerFactory<ProfileRepository>(() => ProfileRepositoryImpl(getIt()));
}
