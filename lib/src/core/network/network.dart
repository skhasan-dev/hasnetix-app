import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:hasnetix/src/config/index.dart';
import 'package:hasnetix/src/core/index.dart' show Request, SecretRepo;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' show PrettyDioLogger;

class NetworkService {
  NetworkService() {
    final extraInterceptors = <Interceptor>[];

    if (kDebugMode) {
      extraInterceptors.add(
        PrettyDioLogger(responseBody: true, requestBody: true),
      );
    }

    _dio = Dio()..interceptors.addAll(extraInterceptors);
    _dio.options.baseUrl = FlavorConfig.instance.baseMobileUrl;
  }

  late Dio _dio;

  Future<Response<dynamic>> request(Request request) async {
    final method = request.method.name;

    final headers = Map<String, String>.from(request.headers ?? {});

    if (request.isSafeRoute) {
      final token = await SecretRepo.getString('auth_token');
      if (token != null && token.isNotEmpty) {
        headers['Authorization'] = 'Bearer $token';
        log(token, name: 'Auth Token');
      }
    }

    return _dio.request(
      request.endpoint,
      data: request.formData ?? request.body,
      queryParameters: request.queryParams,
      options: Options(method: method, headers: headers),
    );
  }
}
