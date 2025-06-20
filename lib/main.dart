import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m360ict/common/utils/general_bindings.dart';
import 'package:m360ict/navigation_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'M360ICT',
      initialBinding: GeneralBinding(),
      home: const NavigationMenu(),
    );
  }
}




