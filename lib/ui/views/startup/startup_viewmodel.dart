import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:food_for_education/services/connectivity_service.dart';
// import 'package:food_for_education/services/hive_service.dart';
import 'package:food_for_education/services/main_service.dart';
import 'package:stacked/stacked.dart';
import 'package:food_for_education/app/app.locator.dart';
import 'package:food_for_education/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _connectivityService = locator<ConnectivityService>();
  final _mainService = locator<MainService>();
  // final _hiveService = locator<HiveService>();

  ConnectivityResult get connectivity => _connectivityService.connectionStatus;

  Future runStartupLogic() async {
    await Future.delayed(const Duration(seconds: 3));
    // _hiveService.clearCache();

    addCachedPosts();

    _navigationService.replaceWithHomeView();
  }

  addCachedPosts() {
    if (connectivity == ConnectivityResult.none) {
      _mainService.updatePostsList();
    }
  }
}
