import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:food_for_education/app/app.locator.dart';
import 'package:food_for_education/app/utils/env.dart';
import 'package:food_for_education/models/def_response.dart';
import 'package:food_for_education/models/post_model.dart';
import 'package:food_for_education/services/dio_service.dart';
import 'package:food_for_education/ui/common/app_urls.dart';
import 'package:stacked/stacked.dart';

class MainService with ListenableServiceMixin {
  MainService() {
    listenToReactiveValues([
      // _userModelData,
      _postList,
    ]);
  }

  final ReactiveValue<List<PostModel>> _postList =
      ReactiveValue<List<PostModel>>([]);
  List<PostModel> get postList => _postList.value;

  final _dioService = locator<DioService>();

  Future<DefResponse> fetchPosts() async {
    try {
      var dio = await _dioService.publicDio();
      final response = await dio.get(
        '${env!.baseUrl}${AppUrls.posts}',
      );
      final List<dynamic> responseData = response.data;

      if (response.statusCode == 200) {
        print(responseData);

        _postList.value = List.from(
            responseData.map<PostModel>((e) => PostModel.fromJson(e.toJson())));

        notifyListeners();
      }

      return DefResponse(success: true, data: responseData);
    } on DioException catch (exception) {
      debugPrint(exception.toString());

      return DefResponse(success: false, message: exception.message);
    }
  }
}
