import 'dart:developer';
import 'dart:io';

import 'package:airsense/src/utils/api_exception.dart';
import 'package:dio/dio.dart';

class DioInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log('❌ Dio Error!');
    log('❌ Url: ${err.requestOptions.uri}');
    log('❌ ${err.stackTrace}');
    log('❌ Response Error: ${err.response?.data}');
    
    if (err.type == DioExceptionType.badResponse) {
      final statusCode = err.response?.statusCode;
      switch (statusCode) {
        case 404:
          throw NotFoundException();
        default:
          throw UnknownException();
      }
    } else if (err.type == DioExceptionType.unknown &&
        err.error is SocketException) {
      throw NoInternetConnectionException();
    }

    return handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log('🌍 Sending network request: ${options.baseUrl}${options.path}');
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log('⬅️ Received network response');
    log('${response.statusCode != 200 ? '❌ ${response.statusCode} ❌' : '✅ 200 ✅'} ${response.requestOptions.baseUrl}${response.requestOptions.path}');
    log('Query params: ${response.requestOptions.queryParameters}');
    log('-------------------------');
    return handler.next(response);
  }
}
