import 'package:hasnetix/src/core/index.dart';

abstract class HomeDataSource {
  ResultFuture<List<MediaFile>> getFiles();
}
