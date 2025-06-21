import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppDeviceUtils {
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
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
}
