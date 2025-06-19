import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m360ict/common/utils/colors.dart';
import 'package:m360ict/features/tickets/screens/filter_screen.dart';

class NotificationWithCounter extends StatelessWidget {
  const NotificationWithCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/icons/notification.png',
            height: 18,
            width: 18,
          ),
        ),
        Positioned(
          right: 6,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: AppColors.counterBackgroundColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Center(
              child: Text('2', style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ],
    );
  }
}
