import 'package:flutter/material.dart';
import 'package:m360ict/common/widgets/appbar.dart';
import 'package:m360ict/common/widgets/notification_icon.dart';
import 'package:m360ict/common/widgets/summary_dashboard.dart';
import 'package:m360ict/features/tickets/screens/widgets/ticket_view.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: Text('M360ICT'),
        actions: [NotificationWithCounter()],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            /// - No. of tickets with filter icon
            const SummaryDashboard(dashboardText: '7 tickets', showFilter: true,),

            /// - Tickets
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, __) => const TicketView(),
              separatorBuilder: (context, __) => const SizedBox(height: 10),
              itemCount: 8,
            ),
          ],
        ),
      ),
    );
  }
}
