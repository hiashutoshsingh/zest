import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:zest/utils/constants.dart';

import 'app_logger.dart';

class AppNetwork {
  // global configuration
  static Dio getClient() {
    Dio dio = new Dio();

    dio.interceptors.add(_getRetryInterceptor(dio));
    dio.interceptors.add(_getInterceptorsWrapper());

    dio.options.baseUrl = apiUrl;

    // handle timeouts
    dio.options.connectTimeout = 20000;
    dio.options.receiveTimeout = 20000;

    return dio;
  }

  static RetryInterceptor _getRetryInterceptor(Dio dio) {
    return RetryInterceptor(
      dio: dio,
    );
  }

  static InterceptorsWrapper _getInterceptorsWrapper() {
    return InterceptorsWrapper(
      onRequest: _requestInterceptor,
      onResponse: _responseInterceptor,
    );
  }

  static InterceptorSendCallback _requestInterceptor = (options, interceptHandler) {
    AppLogger.print("Pre request:${options.method},${options.baseUrl}${options.path}");
    AppLogger.print("Pre request:${options.headers.toString()}");
    return options;
  };

  static InterceptorSuccessCallback _responseInterceptor = (response, interceptHandler) {
    final int statusCode = response.statusCode;

    // handle response for some endpoints
    if (statusCode == 200 || statusCode == 201) {
      //Can be used for setting any shared preference value based on response
    }

    AppLogger.print("Response From:${response.statusCode},${response.data}");
    AppLogger.print("Response = :${response.toString()}");

    return response;
  };

  static final JsonDecoder _decoder = new JsonDecoder();

  // decode json response to dynamic
  static dynamic decodeResponse(d) {
    var response = d as Response;
    final dynamic jsonBody = response.data;
    final statusCode = response.statusCode;

    if (statusCode < 200 || statusCode >= 300 || jsonBody == null) {
      throw new Exception("statusCode: $statusCode");
    }

    if (jsonBody is String) {
      return _decoder.convert(jsonBody);
    } else {
      return jsonBody;
    }
  }
}
