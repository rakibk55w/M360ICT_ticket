import 'package:flutter/material.dart';
import 'package:m360ict/common/widgets/appbar.dart';
import 'package:m360ict/common/widgets/notification_icon.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Text('M360ICT'),
        actions: [
          NotificationWithCounter(),
        ],
      ),
    );
  }
}

