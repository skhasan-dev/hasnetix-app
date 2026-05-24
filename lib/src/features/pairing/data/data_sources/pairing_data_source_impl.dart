import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hasnetix/src/core/index.dart';
import 'package:hasnetix/src/features/pairing/data/entities/pairing_session.dart';

import 'pairing_data_source.dart';

class PairingDataSourceImpl implements PairingDataSource {
  final NetworkService networkService = NetworkService();
  final FirebaseMessaging _fcm = FirebaseMessaging.instance;

  @override
  ResultFuture<PairingSession?> openSession() async {
    String? fcmToken = await _fcm.getToken();
    if (fcmToken == null) {
      return Left(
        APIException(
          statusCode: 404,
          message: 'Something went wrong, Try again later..',
        ),
      );
    }

    String? userId = getIt<AppStateProvider>().user?.id;
    if (userId == null) {
      return Left(
        APIException(
          statusCode: 404,
          message: 'Something went wrong, Try again later..',
        ),
      );
    }

    final request = Request(
      method: RequestMethod.post,

      endpoint: Endpoints.pairingCreate,
      body: {
        "userId": userId,
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
        final session = PairingSession.fromJson(data);
        return Right(session);
      }
    } catch (e, s) {
      log('$e\n\n$s');
      return Left(APIException.from(e));
    }

    return Right(null);
  }

  @override
  ResultFuture<PairingSession?> pairDevice(String code) async {
    String? fcmToken = await _fcm.getToken();
    if (fcmToken == null) {
      return Left(
        APIException(
          statusCode: 404,
          message: 'Something went wrong, Try again later..',
        ),
      );
    }

    String? userId = getIt<AppStateProvider>().user?.id;
    if (userId == null) {
      return Left(
        APIException(
          statusCode: 404,
          message: 'Something went wrong, Try again later..',
        ),
      );
    }

    final request = Request(
      method: RequestMethod.post,

      endpoint: Endpoints.pairingClaim,
      body: {
        'code': code,
        "userId": userId,
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
        final session = PairingSession.fromJson(data);
        return Right(session);
      }
    } catch (e, s) {
      log('$e\n\n$s');
      return Left(APIException.from(e));
    }

    return Right(null);
  }
}
