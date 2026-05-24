import 'package:hasnetix/src/core/index.dart';
import 'package:hasnetix/src/features/auth/index.dart';
import 'package:hasnetix/src/features/home/index.dart';

class HomeViewModel extends ViewStateProvider {
  final HomeRepository _homeRepository = getIt<HomeRepository>();

  List<Device> _devices = [];
  List<Device> get devices => _devices;
  set devices(List<Device> devices) {
    _devices = devices;
    notifyListeners();
  }

  List<MediaFile> _files = [];
  List<MediaFile> get files => _files;
  set files(List<MediaFile> files) {
    _files = files;
    notifyListeners();
  }

  Future<Failure?> getFiles() async {
    Failure? failure;

    setViewState(ViewState.busy);

    final result = await _homeRepository.getFiles();
    result.fold((e) => failure = APIFailure.fromException(exception: e), (r) {
      files = r;
    });

    setViewState(ViewState.complete);

    return failure;
  }
}
