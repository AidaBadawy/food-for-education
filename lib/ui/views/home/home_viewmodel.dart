import 'package:food_for_education/app/app.locator.dart';
import 'package:food_for_education/app/app.router.dart';
import 'package:food_for_education/models/def_response.dart';
import 'package:food_for_education/models/post_model.dart';
import 'package:food_for_education/services/main_service.dart';
import 'package:food_for_education/ui/common/enums.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

class HomeViewModel extends ReactiveViewModel {
  final _navigationService = locator<NavigationService>();
  final _mainService = locator<MainService>();

  StatusEnum _status = StatusEnum.idle;
  StatusEnum get status => _status;

  StatusEnum _statusPaginate = StatusEnum.idle;
  StatusEnum get statusPaginate => _statusPaginate;

  List<PostModel> get postListService => _mainService.postList;

  List<PostModel> _postList = [];
  List<PostModel> get postList => _postList;

  int _page = 1;
  int get page => _page;

  final int _limit = 10;
  int get limit => _limit;

  onInitHomeView() {
    _page = 1;

    fetchPosts();
  }

  fetchPosts() async {
    addDummyDataForLoader();
    setStatus(StatusEnum.busy);
    DefResponse defResponse =
        await _mainService.fetchPostsApi(page: _page, limit: _limit);

    if (defResponse.success!) {
      _postList.clear();
      _postList = defResponse.data;
      setStatus(StatusEnum.success);
    } else {
      setStatus(StatusEnum.error);
    }

    setStatus(StatusEnum.idle);
  }

  fetchMorePosts() {
    if (_postList.length != postListService.length) {
      _page++;
      if (postListService.isEmpty) {
        fetchPosts();
      } else {
        List<PostModel> newData =
            _mainService.calculatePaginatedList(page: _page, limit: _limit);

        _postList.addAll(newData);
        notifyListeners();
      }
    }
  }

  addDummyDataForLoader() {
    _postList = List.generate(
        8,
        (index) => PostModel(
            title: 'Proident dolore duis commodo',
            body: 'Elit sint sit velit irure dolore nisi veniam officia non.'));
  }

  navigateToPostDetail(PostModel post) {
    _navigationService.navigateToPostView(postModel: post);
  }

  toggleDarkLightMode(context) {
    getThemeManager(context).toggleDarkLightTheme();
    notifyListeners();
  }

  setStatus(StatusEnum value) {
    _status = value;
    notifyListeners();
  }

  setStatusPaginate(StatusEnum value) {
    _statusPaginate = value;
    notifyListeners();
  }

  @override
  List<ListenableServiceMixin> get listenableServices => [_mainService];
}
