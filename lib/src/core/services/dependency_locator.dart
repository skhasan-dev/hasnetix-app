import 'package:get_it/get_it.dart';
import 'package:hasnetix/src/core/index.dart'
    show NetworkService, AppStateProvider;

GetIt getIt = GetIt.instance;

Future<void> initDependencyLocator() async {
  getIt
    ..registerLazySingleton<NetworkService>(NetworkService.new)
    ..registerLazySingleton<AppStateProvider>(AppStateProvider.new);
}
