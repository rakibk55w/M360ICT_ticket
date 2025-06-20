import 'package:flutter/material.dart';
import 'package:m360ict/common/utils/colors.dart';

class TicketSpamChip extends StatelessWidget {
  const TicketSpamChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 30,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.chipBorderColor.withAlpha((255 * 0.5).toInt()),
        ),
        borderRadius: BorderRadius.circular(8),
        shape: BoxShape.rectangle,
        color: Colors.white,
      ),
      child: const Center(
        child: Text(
          'Spam',
          style: TextStyle(
            color: AppColors.ticketPriorityTextColor,
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
