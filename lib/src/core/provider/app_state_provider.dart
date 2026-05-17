import 'package:hasnetix/src/core/index.dart'
    show ViewStateProvider, getIt, APIFailure, Failure;
import 'package:hasnetix/src/features/auth/index.dart' show User;
import 'package:hasnetix/src/features/profile/index.dart';

class AppStateProvider extends ViewStateProvider {
  User? _user;
  User? get user => _user;
  set user(User? user) {
    _user = user;
    notifyListeners();
  }

  Future<Failure?> getUserDetails() async {
    final result = await getIt<ProfileRepository>().getUserDetails();
    result.fold(
      (exception) {
        return APIFailure.fromException(exception: exception);
      },
      (result) {
        user = result;
      },
    );
    return null;
  }
}
