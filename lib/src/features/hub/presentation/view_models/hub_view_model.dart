import 'package:hasnetix/src/core/index.dart';

class HubViewModel extends ViewStateProvider {
  FileTypes _selectedTab = FileTypes.all;
  FileTypes get selectedTab => _selectedTab;
  Future<void> changeTab(FileTypes type) async {
    _selectedTab = type;
    notifyListeners();
  }
}
