import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:food_for_education/app/app.locator.dart';
import 'package:food_for_education/app/app.router.dart';
import 'package:food_for_education/models/def_response.dart';
import 'package:food_for_education/models/post_model.dart';
import 'package:food_for_education/services/connectivity_service.dart';
import 'package:food_for_education/services/main_service.dart';
import 'package:food_for_education/ui/common/enums.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

class HomeViewModel extends ReactiveViewModel {
  final _navigationService = locator<NavigationService>();
  final _mainService = locator<MainService>();
  final _connectivityService = locator<ConnectivityService>();

  ConnectivityResult get connectivity => _connectivityService.connectionStatus;

  StatusEnum _status = StatusEnum.idle;
  StatusEnum get status => _status;

  StatusEnum _statusPaginate = StatusEnum.idle;
  StatusEnum get statusPaginate => _statusPaginate;

  List<PostModel> get postListService => _mainService.postList;
  List<PostModel> get paginatedList => _mainService.paginatedList;

  int _page = 1;
  int get page => _page;

  final int _limit = 10;
  int get limit => _limit;

  bool _hasFetched = false;
  bool get hasFetched => _hasFetched;

  Future<void> onInitHomeView() async {
    _page = 1;

    await fetchPosts();
  }

  Future<void> fetchPosts() async {
    if (connectivity == ConnectivityResult.none) {
      _page = 1;

      _mainService.clearPaginatedList();

      _mainService.updatePaginatedList(page: _page, limit: _limit);
      _connectivityService.updateShowButton(true);
      notifyListeners();
      return;
    }
    setHasFetched();
    _mainService.addDummyDataForLoader();
    setStatus(StatusEnum.busy);
    DefResponse defResponse =
        await _mainService.fetchPostsApi(page: _page, limit: _limit);

    if (defResponse.success!) {
      setStatus(StatusEnum.success);
    } else {
      setStatus(StatusEnum.error);
    }

    setStatus(StatusEnum.idle);
  }

  void fetchMorePosts() {
    if (paginatedList.length != postListService.length) {
      _page++;
      if (postListService.isEmpty) {
        fetchPosts();
      } else {
        _mainService.updatePaginatedList(page: _page, limit: _limit);

        notifyListeners();
      }
    }
  }

  void navigateToPostDetail(PostModel post) {
    _navigationService.navigateToPostView(postModel: post);
  }

  void toggleDarkLightMode(context) {
    getThemeManager(context).toggleDarkLightTheme();
    notifyListeners();
  }

  void setHasFetched() {
    _hasFetched = true;
    notifyListeners();
  }

  void setStatus(StatusEnum value) {
    _status = value;
    notifyListeners();
  }

  void setStatusPaginate(StatusEnum value) {
    _statusPaginate = value;
    notifyListeners();
  }

  @override
  List<ListenableServiceMixin> get listenableServices =>
      [_mainService, _connectivityService];
}
