import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:food_for_education/app/app.locator.dart';
import 'package:food_for_education/services/connectivity_service.dart';
import 'package:stacked/stacked.dart';

class BodyWrapperModel extends ReactiveViewModel {
  final _connectivityService = locator<ConnectivityService>();

  ConnectivityResult get connectivity => _connectivityService.connectionStatus;

  bool get showButton => _connectivityService.showButton;

  void showButtonFunc(bool val) {
    _connectivityService.updateShowButton(val);
  }

  @override
  List<ListenableServiceMixin> get listenableServices => [
        _connectivityService,
      ];
}
