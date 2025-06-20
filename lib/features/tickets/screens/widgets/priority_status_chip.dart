import 'package:flutter/material.dart';
import 'package:m360ict/common/utils/colors.dart';

class PriorityStatusChip extends StatelessWidget {
  const PriorityStatusChip({
    super.key,
    required this.priorityTitle,
    required this.priorityDotColor,
  });

  final String priorityTitle;
  final Color priorityDotColor;

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
        color: Colors.white,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 6,
            width: 6,
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              color: priorityDotColor,
              shape: BoxShape.circle,
            ),
          ),
          Text(priorityTitle, style: const TextStyle(color: AppColors.ticketPriorityTextColor, fontWeight: FontWeight.w500, fontSize: 12)),
        ],
      ),
    );
  }
}
