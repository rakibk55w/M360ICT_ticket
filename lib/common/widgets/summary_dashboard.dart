import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m360ict/features/tickets/screens/filter_screen.dart';

class SummaryDashboard extends StatelessWidget {
  const SummaryDashboard({
    super.key,
    required this.dashboardText,
    this.showFilter = false,
    this.padding,
  });

  final String dashboardText;
  final bool showFilter;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(dashboardText),
          showFilter
              ? IconButton(
                  onPressed: () => Get.to(() => const FilterScreen()),
                  icon: const Icon(Icons.filter_alt_outlined),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
