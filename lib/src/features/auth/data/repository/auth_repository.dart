import 'package:hasnetix/src/core/index.dart' show ResultFuture, UserType;
import 'package:hasnetix/src/features/auth/index.dart' show User;

abstract class AuthRepository {
  ResultFuture<User?> login({
    String? email,
    String? name,
    UserType? type,
    String? token,
  });
}
