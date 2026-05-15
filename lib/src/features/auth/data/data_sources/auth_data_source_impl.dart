import 'package:dartz/dartz.dart';
import 'package:hasnetix/src/core/index.dart'
    show
        NetworkService,
        UserType,
        ResultFuture,
        RequestMethod,
        Endpoints,
        Request,
        APIException;
import 'package:hasnetix/src/features/auth/index.dart' show User;

import 'auth_data_source.dart';

class AuthDataSourceImpl implements AuthDataSource {
  final NetworkService networkService = NetworkService();
  @override
  ResultFuture<User?> login({
    String? email,
    String? name,
    UserType? type,
    String? token,
  }) async {
    final request = Request(
      method: RequestMethod.post,
      endpoint: Endpoints.authLogin,
      body: {
        'provider': (type ?? UserType.guest).apiLabel,
        if (name != null && name.isNotEmpty) 'name': name,
        if (email != null && email.isNotEmpty) 'email': email,
        if (type == UserType.google) 'token': token,
      },
    );

    try {
      final result = await networkService.request(request);
      final response = result.data as Map<String, dynamic>;

      if (response.isNotEmpty) {
        final user = User.fromJson(response['data'] as Map<String, dynamic>);
        return Right(user);
      }
    } catch (e) {
      return Left(APIException.from(e));
    }

    return Right(null);
  }
}
