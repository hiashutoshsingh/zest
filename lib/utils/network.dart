import 'package:dio/dio.dart';

import 'app_logger.dart';
import 'constants.dart';

class AppNetwork {
  // global configuration
  static Dio getClient() {
    Dio dio = new Dio();

    // dio.interceptors.add(_getInterceptorsWrapper());

    dio.options.baseUrl = apiUrl;

    AppLogger.print("Pre request:${dio.options.method},${dio.options.baseUrl}");
    AppLogger.print("Pre request:${dio.options.headers.toString()}");

    // handle timeouts
    dio.options.connectTimeout = 20000;
    dio.options.receiveTimeout = 20000;

    return dio;
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
}
