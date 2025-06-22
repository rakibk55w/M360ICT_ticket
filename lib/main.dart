import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:m360ict/common/utils/general_bindings.dart';
import 'package:m360ict/navigation_menu.dart';

Future<void> main() async {
  await GetStorage.init();
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
