import 'package:flutter/material.dart';
import 'package:m360ict/common/utils/colors.dart';
import 'package:m360ict/common/utils/device_utility.dart';
import 'package:m360ict/features/tickets/screens/widgets/filter_status.dart';
import 'package:m360ict/features/tickets/screens/widgets/priority_status_chip.dart';
import 'package:m360ict/features/tickets/screens/widgets/ticket_progress_chip.dart';
import 'package:m360ict/features/tickets/screens/widgets/ticket_spam_chip.dart';
import 'package:m360ict/features/tickets/screens/widgets/ticket_user_detail.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

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
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FilterStatus(filterTitle: 'New', chipTextColor: AppColors.chipNew, chipBackgroundColor: AppColors.chipNewBg),
            SizedBox(height: 6),
            Text('#ID 132198423', style: TextStyle(color: AppColors.idTextColor, fontWeight: FontWeight.w600, fontSize: 11)),
            SizedBox(height: 6),
            Text(
              'Search view, which can display dynamic suggestions, is the focused state of search bar.', style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 13
            ),
            ),
            SizedBox(height: 6),
            TicketUserDetail(name: 'Michale', date: '23 Dec 2023', time: '03:43 PM'),
            Divider(),
            SizedBox(height: 6),
            Row(
              children: [
                PriorityStatusChip(priorityTitle: 'Low', priorityDotColor: AppColors.low,),
                SizedBox(width: 8),
                TicketProgressChip(progressTitle: 'Open',),
                SizedBox(width: 8),
                TicketSpamChip(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



