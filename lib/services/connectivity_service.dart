import 'dart:async';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';

class ConnectivityService with ListenableServiceMixin {
  ConnectivityService() {
    listenToReactiveValues([
      initConnectivity(),
      _connectivitySubscription =
          _connectivity.onConnectivityChanged.listen(_updateConnectionStatus),
      _showButton
    ]);
  }
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  final ReactiveValue<ConnectivityResult> _connectionStatus =
      ReactiveValue<ConnectivityResult>(ConnectivityResult.none);
  ConnectivityResult get connectionStatus => _connectionStatus.value;

  final ReactiveValue<bool> _showButton = ReactiveValue<bool>(false);
  bool get showButton => _showButton.value;

  final Connectivity _connectivity = Connectivity();

  Future<void> initConnectivity() async {
    late ConnectivityResult result;

    try {
      result = await _connectivity.checkConnectivity();
      log('Connectivity Result: $result');
    } on PlatformException catch (e) {
      log('Couldn\'t check connectivity status', error: e);
      return;
    }

    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    _connectionStatus.value = result;

    if (_connectionStatus.value == ConnectivityResult.none) {
      updateShowButton(true);
    } else {
      updateShowButton(false);
    }

    notifyListeners();
  }

  updateShowButton(value) {
    _showButton.value = value;
    notifyListeners();
  }

  void dispose() {
    _connectivitySubscription.cancel();
  }
}
