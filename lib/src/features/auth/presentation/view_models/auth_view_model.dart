import 'package:hasnetix/src/core/index.dart'
    show
        ViewState,
        ViewStateProvider,
        Failure,
        AppStateProvider,
        getIt,
        APIFailure,
        UserType;
import 'package:hasnetix/src/features/auth/index.dart' show AuthRepository;

class AuthViewModel extends ViewStateProvider {
  final authRepository = getIt<AuthRepository>();

  Future<Failure?> login(UserType type) async {
    Failure? failure;
    setViewState(ViewState.busy);

    final result = await authRepository.login(type: type);

    result.fold((e) => failure = APIFailure.fromException(exception: e), (r) {
      getIt<AppStateProvider>().user = r;
    });

    setViewState(ViewState.complete);

    return failure;
  }
}
