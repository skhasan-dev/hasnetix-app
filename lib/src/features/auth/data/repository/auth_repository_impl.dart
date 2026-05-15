import 'package:hasnetix/src/core/index.dart' show ResultFuture, UserType;
import 'package:hasnetix/src/features/auth/index.dart'
    show User, AuthRepository, AuthDataSource;

class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl(AuthDataSource dataSource)
    : _authDataSource = dataSource;

  final AuthDataSource _authDataSource;
  @override
  ResultFuture<User?> login({
    String? email,
    String? name,
    UserType? type,
    String? token,
  }) =>
      _authDataSource.login(email: email, name: name, type: type, token: token);
}
