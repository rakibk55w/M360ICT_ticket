import 'package:flutter/material.dart';
import 'package:m360ict/common/widgets/appbar.dart';
import 'package:m360ict/common/widgets/notification_icon.dart';
import 'package:m360ict/features/tickets/screens/widgets/ticket_view.dart';
import 'package:m360ict/features/tickets/screens/widgets/tickets_dashboard.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: Text('M360ICT'),
        actions: [
          NotificationWithCounter(),
        ],
      ),
      body: Column(
        children: [
          const TicketsDashboard(),
          const TicketView(),
        ],
      ),
    );
  }
}

