import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m360ict/common/utils/colors.dart';
import 'package:m360ict/screens/contacts_screen.dart';
import 'package:m360ict/screens/profile_screen.dart';
import 'package:m360ict/screens/tickets_screen.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationController = Get.put(NavigationController());
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      bottomNavigationBar: Obx(() {
        return NavigationBar(
          backgroundColor: AppColors.navigationBarColor,
          indicatorColor: AppColors.navigationBarSelectedColor,
          height: 80,
          elevation: 0,
          selectedIndex: navigationController.selectedIndex.value,
          onDestinationSelected: (index) {
            navigationController.selectedIndex.value = index;
          },

          destinations: [
            const NavigationDestination(icon: Icon(Icons.airplane_ticket), label: 'Tickets'),
            const NavigationDestination(icon: Icon(Icons.person), label: 'Contacts'),
            const NavigationDestination(icon: Icon(Icons.group), label: 'Profile'),
          ],
        );
      }),
      body: Obx(() {
        return navigationController.screens[navigationController.selectedIndex.value];
      }),
    );
  }
}

class NavigationController extends GetxController {
  final selectedIndex = 0.obs;

  final screens = [
    const TicketsScreen(),
    const ContactsScreen(),
    const ProfileScreen(),
  ];
}
