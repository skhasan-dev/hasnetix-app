import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hasnetix/src/core/index.dart'
    show
        NetworkService,
        UserType,
        ResultFuture,
        RequestMethod,
        Endpoints,
        Request,
        APIException,
        DeviceIdService,
        SecretRepo;
import 'package:hasnetix/src/features/auth/index.dart' show User;

import 'auth_data_source.dart';

class AuthDataSourceImpl implements AuthDataSource {
  final NetworkService networkService = NetworkService();
  final FirebaseMessaging _fcm = FirebaseMessaging.instance;
  @override
  ResultFuture<User?> login({
    String? email,
    String? name,
    UserType? type,
    String? token,
  }) async {
    String? fcmToken = await _fcm.getToken();
    if (fcmToken == null) {
      return Left(
        APIException(
          statusCode: 404,
          message: 'Something went wrong, Try again later..',
        ),
      );
    }

    String? userId = await SecretRepo.getString('auth_user_id');

    final request = Request(
      method: RequestMethod.post,
      endpoint: Endpoints.authLogin,
      body: {
        'userId': ?userId,
        'provider': (type ?? UserType.guest).apiLabel,
        if (name != null && name.isNotEmpty) 'name': name,
        if (email != null && email.isNotEmpty) 'email': email,
        if (type == UserType.google) 'token': token,
        'deviceId': await DeviceIdService.getId(),
        'deviceName': await DeviceIdService.getDeviceName(),
        'deviceType': DeviceIdService.getDeviceType().apiLabel,
        'fcmToken': fcmToken,
      },
    );

    try {
      final result = await networkService.request(request);
      final response = result.data as Map<String, dynamic>;

      if (response.isNotEmpty) {
        final data = response['data'] as Map<String, dynamic>;
        final user = User.fromJson(data['user']);
        await SecretRepo.setString('auth_token', data['token']);
        await SecretRepo.setString('auth_user_id', user.userId ?? '');
        return Right(user);
      }
    } catch (e, s) {
      log('$e\n\n$s');
      return Left(APIException.from(e));
    }

    return Right(null);
  }
}
