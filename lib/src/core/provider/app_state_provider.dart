import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hasnetix/src/core/index.dart'
    show ViewStateProvider, getIt, APIFailure, Failure, RouteNames, SecretRepo;
import 'package:hasnetix/src/features/auth/index.dart' show User;
import 'package:hasnetix/src/features/home/index.dart';
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
        getIt<HomeViewModel>().devices = user?.lastPairedDevices ?? [];
      },
    );
    return null;
  }

  Future<void> logout(BuildContext context) async {
    await SecretRepo.remove('auth_token');
    await SecretRepo.remove('auth_user_id');
    context.goNamed(RouteNames.login);
  }
}
