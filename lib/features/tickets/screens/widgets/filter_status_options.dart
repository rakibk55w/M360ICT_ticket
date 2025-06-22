import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m360ict/common/utils/colors.dart';
import 'package:m360ict/features/tickets/controllers/filter_controller.dart';

class FilterStatusOptions extends StatelessWidget {
  const FilterStatusOptions({super.key});

  @override
  Widget build(BuildContext context) {
    final filterController = FilterController.instance;

    return Obx(() {
      return Column(
        children: List.generate(filterController.status.length, (index) {
          final isSelected =
              filterController.selectedStatusIndex.value == index;
          return GestureDetector(
            onTap: () => filterController.selectedStatusIndex.value = isSelected
                ? -1
                : index,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Transform.scale(
                  scale: 0.8,
                  child: Checkbox(
                    visualDensity: VisualDensity.compact,
                    value: filterController.selectedStatusIndex.value == index,
                    onChanged: (_) =>
                        filterController.selectedStatusIndex.value = isSelected
                        ? -1
                        : index,
                    activeColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
                Text(
                  filterController.status[index],
                  style: const TextStyle(
                    color: AppColors.filterOptionsTextColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          );
        }),
      );
    });
  }
}
