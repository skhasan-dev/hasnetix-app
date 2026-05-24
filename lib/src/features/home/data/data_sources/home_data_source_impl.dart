import 'package:dartz/dartz.dart';
import 'package:hasnetix/src/core/index.dart';

import 'home_data_source.dart';

class HomeDataSourceImpl implements HomeDataSource {
  NetworkService networkService = NetworkService();
  @override
  ResultFuture<List<MediaFile>> getFiles() async {
    final request = Request(
      method: RequestMethod.get,
      endpoint: Endpoints.files,
      isSafeRoute: true,
    );
    try {
      final result = await networkService.request(request);
      final response = result.data as Map<String, dynamic>;

      if (response.isNotEmpty) {
        final list = response['data'] as List<dynamic>;
        final files = list
            .map((item) => MediaFile.fromJson(item as Map<String, dynamic>))
            .toList();
        return Right(files);
      }
    } catch (e) {
      return Left(APIException.from(e));
    }
    return Right([]);
  }
}
