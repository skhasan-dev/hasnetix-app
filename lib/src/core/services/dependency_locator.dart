import 'package:get_it/get_it.dart';
import 'package:hasnetix/src/core/index.dart'
    show NetworkService, AppStateProvider;
import 'package:hasnetix/src/features/auth/index.dart';

GetIt getIt = GetIt.instance;

Future<void> initDependencyLocator() async {
  getIt
    ..registerLazySingleton<NetworkService>(NetworkService.new)
    ..registerLazySingleton<AppStateProvider>(AppStateProvider.new)
    ..registerLazySingleton<AuthDataSource>(() => AuthDataSourceImpl())
    ..registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(getIt()));
}
