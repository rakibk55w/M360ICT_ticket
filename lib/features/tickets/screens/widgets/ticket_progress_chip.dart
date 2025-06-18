import 'package:flutter/material.dart';
import 'package:m360ict/common/utils/colors.dart';

class TicketProgressChip extends StatelessWidget {
  const TicketProgressChip({super.key, required this.progressTitle});

  final String progressTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 30,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.chipBorderColor.withAlpha((255 * 0.5).toInt()),
        ),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Center(child: Text(progressTitle)),
    );
  }
}
