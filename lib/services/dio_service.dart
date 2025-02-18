import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:food_for_education/app/utils/dio_interceptor.dart';
import 'package:food_for_education/app/utils/env.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class DioService with ListenableServiceMixin {
  final _publicDio = Dio();
  // final _initDio = Dio();

  Future<Dio> publicDio() async {
    BuildContext? context = StackedService.navigatorKey!.currentContext;
    _publicDio.interceptors.addAll(
      [
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: true,
          request: true,
          compact: true,
        ),
        CustomInterceptor(context!),
      ],
    );

    _publicDio.options.baseUrl = env!.baseUrl;
    _publicDio.options.connectTimeout = const Duration(seconds: 20);
    _publicDio.options.receiveTimeout = const Duration(seconds: 20);
    _publicDio.options.headers = {'Content-Type': 'application/json'};
    return _publicDio;
  }
}
