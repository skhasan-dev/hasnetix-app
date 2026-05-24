import 'package:hasnetix/src/core/index.dart';
import 'package:hasnetix/src/features/pairing/index.dart';

class PairingViewModel extends ViewStateProvider {
  final repository = getIt<PairingRepository>();

  PairingSession? _session;
  PairingSession? get session => _session;
  set session(PairingSession? session) {
    _session = session;
    notifyListeners();
  }

  Future<Failure?> openSession() async {
    Failure? failure;

    setViewState(ViewState.busy);

    final result = await repository.openSession();

    result.fold((e) => failure = APIFailure.fromException(exception: e), (r) {
      session = r;
    });

    setViewState(ViewState.complete);

    return failure;
  }

  Future<Failure?> pairDevice(String code) async {
    Failure? failure;

    setViewState(ViewState.busy);

    final result = await repository.pairDevice(code);

    result.fold((e) => failure = APIFailure.fromException(exception: e), (r) {
      session = r;
    });

    setViewState(ViewState.complete);

    return failure;
  }
}
