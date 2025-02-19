import 'package:flutter/material.dart';
import 'package:food_for_education/app/app.locator.dart';
import 'package:food_for_education/models/post_model.dart';
import 'package:food_for_education/services/main_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class PostViewModel extends ReactiveViewModel {
  final _mainService = locator<MainService>();
  final _navigationService = locator<NavigationService>();

  List<PostModel> get paginatedList => _mainService.paginatedList;

  final List<PostModel> _postStack = [];
  List<PostModel> get postStack => _postStack;

  PostModel? _currentPost;
  PostModel? get currentPost => _currentPost;

  final ScrollController _scrollController = ScrollController();
  ScrollController get scrollController => _scrollController;

  initPostView(PostModel post) {
    _currentPost = post;
  }

  List<PostModel> get filteredPaginatedList {
    if (_currentPost == null) {
      return paginatedList;
    }
    return paginatedList.where((post) => post.id != _currentPost!.id).toList();
  }

  void updatePost(PostModel newPost) {
    if (_currentPost != null) {
      _postStack.add(_currentPost!);
    }
    _currentPost = newPost;
    _scrollController.jumpTo(0);
    notifyListeners();
  }

  void goBack() {
    if (_postStack.isNotEmpty) {
      _currentPost = _postStack.removeLast();
      _scrollController.jumpTo(0);

      notifyListeners();
    } else {
      _navigationService.back();
    }
  }

  @override
  List<ListenableServiceMixin> get listenableServices => [_mainService];
}
