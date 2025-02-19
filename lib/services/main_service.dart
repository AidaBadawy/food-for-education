import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:food_for_education/app/app.locator.dart';
import 'package:food_for_education/app/utils/env.dart';
import 'package:food_for_education/models/def_response.dart';
import 'package:food_for_education/models/post_model.dart';
import 'package:food_for_education/services/dio_service.dart';
import 'package:food_for_education/services/hive_service.dart';
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
  final _hiveService = locator<HiveService>();

  updatePostsList() {
    _postList.value = _hiveService.getCachedPosts();
    notifyListeners();
  }

  Future<DefResponse> fetchPostsApi({
    required int page,
    required int limit,
  }) async {
    try {
      var dio = await _dioService.publicDio();
      final response = await dio.get(
        '${env!.baseUrl}${AppUrls.posts}',
      );
      final List<dynamic> responseData = response.data;

      _postList.value =
          List.from(responseData.map<PostModel>((e) => PostModel.fromJson(e)));

      _hiveService.savePosts(_postList.value);

      List<PostModel> paginatedData =
          calculatePaginatedList(page: page, limit: limit);

      notifyListeners();

      return DefResponse(success: true, data: paginatedData);
    } on DioException catch (exception) {
      debugPrint(exception.toString());

      return DefResponse(success: false, message: exception.message);
    }
  }

  calculatePaginatedList({
    required int page,
    required int limit,
  }) {
    List paginatedData = [];
    int startIndex = (page - 1) * limit;
    int endIndex = startIndex + limit;

    paginatedData = _postList.value
        .sublist(startIndex, endIndex.clamp(0, _postList.value.length));

    return paginatedData;
  }
}
