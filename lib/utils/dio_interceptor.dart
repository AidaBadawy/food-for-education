import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CustomInterceptor extends Interceptor {
  final BuildContext context;

  CustomInterceptor(this.context);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    debugPrint('Request: ${options.method} ${options.uri}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint('Response: ${response.statusCode}');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint('Error: ${err.message}');
    _showErrorSnackBar(err);
    super.onError(err, handler);
  }

  void _showErrorSnackBar(DioException err) {
    String errorMessage = 'An error occurred';

    if (err.response != null) {
      errorMessage = err.response?.data['message'] ?? 'An error occurred';
    } else if (err.type == DioExceptionType.connectionTimeout) {
      errorMessage = 'Connection timeout';
    } else if (err.type == DioExceptionType.receiveTimeout) {
      errorMessage = 'Receive timeout';
    } else if (err.type == DioExceptionType.sendTimeout) {
      errorMessage = 'Send timeout';
    } else if (err.type == DioExceptionType.badResponse) {
      errorMessage = 'Bad response';
    } else if (err.type == DioExceptionType.cancel) {
      errorMessage = 'Request cancelled';
    } else if (err.type == DioExceptionType.unknown) {
      errorMessage = 'Unknown error';
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(errorMessage),
        backgroundColor: Colors.red,
      ),
    );
  }
}
