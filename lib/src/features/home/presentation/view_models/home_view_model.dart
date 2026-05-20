import 'package:hasnetix/src/core/index.dart';
import 'package:hasnetix/src/features/auth/index.dart';
import 'package:hasnetix/src/features/home/index.dart';

class HomeViewModel extends ViewStateProvider {
  final HomeRepository _homeRepository = getIt<HomeRepository>();

  List<Device> _devices = [
    Device(type: DeviceType.mobile, name: 'Mobile 1'),
    Device(type: DeviceType.desktop, name: 'Desktop 1'),
  ];
  List<Device> get devices => _devices;
  set devices(List<Device> devices) {
    _devices = devices;
    notifyListeners();
  }

  List<MediaFile> _files = [
    MediaFile(
      originalName: 'File 1.jpg',
      fileType: FileTypes.image,
      size: 1024 * 1024,
      createdAt: DateTime(2025, 5, 5),
    ),
    MediaFile(
      originalName: 'File 1.mp3',
      fileType: FileTypes.document,
      size: 1024 * 1024,
      createdAt: DateTime.now(),
    ),
    MediaFile(
      originalName: 'File 1.docx',
      fileType: FileTypes.other,
      size: 1024 * 1024,
      createdAt: DateTime.now(),
    ),
  ];
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
