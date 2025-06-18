import 'package:flutter/material.dart';

class FilterStatus extends StatelessWidget {
  const FilterStatus({
    super.key,
    required this.filterTitle,
    required this.chipTextColor,
    required this.chipBackgroundColor,
  });

  final String filterTitle;
  final Color chipTextColor;
  final Color chipBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          height: 30,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
            color: chipBackgroundColor,
          ),
          child: Center(
            child: Text(filterTitle, style: TextStyle(color: chipTextColor)),
          ),
        ),
      ],
    );
  }
}
