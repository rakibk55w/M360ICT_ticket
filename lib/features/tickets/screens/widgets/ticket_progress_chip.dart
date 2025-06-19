import 'package:flutter/material.dart';
import 'package:m360ict/common/utils/colors.dart';

class TicketProgressChip extends StatelessWidget {
  const TicketProgressChip({
    super.key,
    required this.progressTitle,
    this.isSelected = false,
  });

  final String progressTitle;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 30,
      decoration: BoxDecoration(
        border: isSelected
            ? Border.all(color: Colors.transparent)
            : Border.all(
                color: AppColors.chipBorderColor.withAlpha((255 * 0.5).toInt()),
              ),
        borderRadius: BorderRadius.circular(8),
        shape: BoxShape.rectangle,
        color: isSelected ? AppColors.chipSelectedColor : Colors.white,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          isSelected
              ? Image.asset('assets/icons/selected.png', height: 16, width: 16)
              : const SizedBox.shrink(),
          isSelected ? const SizedBox(width: 5) : const SizedBox.shrink(),
          Text(progressTitle),
        ],
      ),
    );
  }
}
