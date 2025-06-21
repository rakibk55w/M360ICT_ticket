import 'package:flutter/material.dart';
import 'package:m360ict/common/utils/colors.dart';
import 'package:m360ict/common/utils/device_utility.dart';
import 'package:m360ict/features/tickets/model/ticket_model.dart';
import 'package:m360ict/features/tickets/screens/widgets/filter_status.dart';
import 'package:m360ict/features/tickets/screens/widgets/priority_status_chip.dart';
import 'package:m360ict/features/tickets/screens/widgets/ticket_progress_chip.dart';
import 'package:m360ict/features/tickets/screens/widgets/ticket_spam_chip.dart';
import 'package:m360ict/features/tickets/screens/widgets/ticket_user_detail.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key, required this.ticket});

  final TicketModel ticket;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        width: AppDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.ticketColorBg,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FilterStatus(filterTitle: 'New', chipTextColor: AppColors.chipNew, chipBackgroundColor: AppColors.chipNewBg),
            const SizedBox(height: 6),
            Text('#ID ${ticket.id}', style: const TextStyle(color: AppColors.idTextColor, fontWeight: FontWeight.w600, fontSize: 11)),
            const SizedBox(height: 6),
            Text(
              ticket.detail, style: const TextStyle(
              fontWeight: FontWeight.w500, fontSize: 13
            ),
            ),
            const SizedBox(height: 6),
            TicketUserDetail(name: ticket.submittedBy, date: ticket.date, time: ticket.time),
            const Divider(),
            const SizedBox(height: 6),
            Row(
              children: [
                PriorityStatusChip(priorityTitle: ticket.priority, priorityDotColor: AppColors.low,),
                const SizedBox(width: 8),
                TicketProgressChip(progressTitle: ticket.progress,),
                const SizedBox(width: 8),
                ticket.spam ? const TicketSpamChip() : const SizedBox.shrink(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



