import 'package:hasnetix/src/core/index.dart' show ResultFuture;
import 'package:hasnetix/src/features/auth/index.dart' show User;

abstract class ProfileDataSource {
  ResultFuture<User?> getUserDetails();
}
