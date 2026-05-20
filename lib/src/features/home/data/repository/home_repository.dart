import 'package:hasnetix/src/core/index.dart';

abstract class HomeRepository {
  ResultFuture<List<MediaFile>> getFiles();
}
