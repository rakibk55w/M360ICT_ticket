import 'package:flutter/material.dart';

class FilterStatus extends StatelessWidget {
  const FilterStatus({
    super.key,
  });

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
            color: AppColors.chipNewBg,
          ),
          child: Center(
            child: Text(
              'New',
              style: TextStyle(color: AppColors.chipNew),
            ),
          ),
        ),
      ],
    );
  }
}
