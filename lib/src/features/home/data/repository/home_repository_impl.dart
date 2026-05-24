import 'package:hasnetix/src/core/models/media_file.dart';
import 'package:hasnetix/src/core/network/typedef.dart';
import 'package:hasnetix/src/features/home/index.dart';

class HomeRepositoryImpl implements HomeRepository {
  const HomeRepositoryImpl(HomeDataSource dataSource)
    : homeDataSource = dataSource;

  final HomeDataSource homeDataSource;

  @override
  ResultFuture<List<MediaFile>> getFiles() => homeDataSource.getFiles();
}
