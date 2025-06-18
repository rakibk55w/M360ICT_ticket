import 'package:flutter/material.dart';

import 'package:get/get.dart';
//import 'package:connectivity_plus/connectivity_plus.dart';

class AppDeviceUtils {
  static double getScreenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getBottomNavigationBarHeight() {
    return kBottomNavigationBarHeight;
  }

  static double getAppbarHeight() {
    return kToolbarHeight;
  }

  // static Future<bool> hasInternetConnection() async {
  //   try {
  //     var connectivityResult = await Connectivity().checkConnectivity();
  //
  //     if (connectivityResult == ConnectivityResult.none) {
  //       _showNoInternetDialog(Get.context!, "Please turn on Wi-Fi or mobile data to continue.");
  //       return false;
  //     }
  //
  //     final result = await InternetAddress.lookup("example.com");
  //     return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
  //
  //   } on SocketException catch (_) {
  //     _showNoInternetDialog(Get.context!, "No internet connection available.");
  //     return false;
  //   }
  // }
  //
  // static void _showNoInternetDialog(BuildContext context, String message) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: const Text("Could not connect to internet."),
  //         content: Text(message),
  //         actions: <Widget>[
  //           TextButton(
  //             child: const Text("OK"),
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }
}
