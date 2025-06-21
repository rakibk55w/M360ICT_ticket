import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m360ict/common/loader/shimmer.dart';
import 'package:m360ict/common/utils/device_utility.dart';
import 'package:m360ict/common/widgets/appbar.dart';
import 'package:m360ict/common/widgets/notification_icon.dart';
import 'package:m360ict/common/widgets/summary_dashboard.dart';
import 'package:m360ict/features/tickets/controllers/ticket_controller.dart';
import 'package:m360ict/features/tickets/screens/widgets/ticket_view.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ticketController = Get.put(TicketController());
    return Scaffold(
      appBar: CustomAppbar(
        title: Text('M360ICT', style: TextStyle(fontWeight: FontWeight.w400)),
        actions: [NotificationWithCounter()],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            /// - No. of tickets with filter icon
            Obx(
              () => SummaryDashboard(
                dashboardText: '${ticketController.tickets.length} tickets',
                showFilter: true,
              ),
            ),

            /// - Generating tickets from ticket model
            Obx(() {
              if (ticketController.isTicketLoading.value) {
                return ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  separatorBuilder: (context, __) => const SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    return ShimmerEffect(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Container(
                          width: AppDeviceUtils.getScreenWidth(context),
                          height: 200,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  },
                );
              }

              if (ticketController.tickets.isEmpty) {
                return const Center(child: Text('No tickets found'));
              }

              /// - Tickets
              return ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: ticketController.tickets.length,
                separatorBuilder: (context, __) => const SizedBox(height: 10),
                itemBuilder: (context, index) {
                  final ticket = ticketController.tickets[index];
                  return TicketView(ticket: ticket);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
