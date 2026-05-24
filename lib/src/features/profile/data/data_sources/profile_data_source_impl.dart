import 'package:dartz/dartz.dart';
import 'package:hasnetix/src/core/index.dart'
    show
        ResultFuture,
        SecretRepo,
        APIException,
        RequestMethod,
        Endpoints,
        Request,
        NetworkService;
import 'package:hasnetix/src/features/auth/index.dart' show User;
import 'package:hasnetix/src/features/profile/index.dart'
    show ProfileDataSource;

import 'profile_data_source.dart';

class ProfileDataSourceImpl implements ProfileDataSource {
  final NetworkService networkService = NetworkService();

  @override
  ResultFuture<User?> getUserDetails() async {
    String? token = await SecretRepo.getString('auth_token');
    if (token == null) {
      return Left(
        APIException(statusCode: 401, message: 'Session Expired, Login Again.'),
      );
    }

    String? userId = await SecretRepo.getString('auth_user_id');
    if (userId == null) {
      return Left(
        APIException(
          statusCode: 404,
          message: 'User not Found, Try Logging Again',
        ),
      );
    }

    final request = Request(
      method: RequestMethod.get,
      endpoint: '${Endpoints.user}/$userId',
    );

    try {
      final result = await networkService.request(request);
      final response = result.data as Map<String, dynamic>;

      if (response.isNotEmpty) {
        final data = response['data'] as Map<String, dynamic>;
        final user = User.fromJson(data);
        ;
        return Right(user);
      }
    } catch (e, s) {
      return Left(APIException.from(e));
    }

    return Right(null);
  }
}
