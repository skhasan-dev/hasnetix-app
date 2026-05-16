import 'package:hasnetix/src/core/index.dart' show ViewStateProvider;
import 'package:hasnetix/src/features/auth/index.dart' show User;

class AppStateProvider extends ViewStateProvider {
  User? _user;
  User? get user => _user;
  set user(User? user) {
    _user = user;
    notifyListeners();
  }
}
