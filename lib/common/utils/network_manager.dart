import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:m360ict/common/widgets/show_toast.dart';

class NetworkManager extends GetxController {
  static NetworkManager get instance => Get.find();

  bool _wasConnected = true;
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;
  final RxList<ConnectivityResult> _connectionStatus =
      <ConnectivityResult>[].obs;

  @override
  void onInit() {
    super.onInit();
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(
      _updateConnectionStatus,
    );
  }

  Future<void> _updateConnectionStatus(List<ConnectivityResult> result) async {
    _connectionStatus.value = result;

    final bool isCurrentlyConnected = result.any((element) =>
    element == ConnectivityResult.wifi || element == ConnectivityResult.mobile);

    if (!isCurrentlyConnected && _wasConnected) {
      showToast('No internet connection');
    }

    if (isCurrentlyConnected && !_wasConnected) {
      showToast('Internet connection restored');
    }

    _wasConnected = isCurrentlyConnected;
  }

  Future<bool> isConnected() async {
    try {
      final result = await _connectivity.checkConnectivity();
      if (result.any((element) => element == ConnectivityResult.none)) {
        return false;
      } else {
        return true;
      }
    } on PlatformException catch (_) {
      return false;
    }
  }

  @override
  void onClose() {
    super.onClose();
    _connectivitySubscription.cancel();
  }
}
