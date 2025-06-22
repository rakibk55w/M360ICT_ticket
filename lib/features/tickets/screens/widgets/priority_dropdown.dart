import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m360ict/features/tickets/controllers/filter_controller.dart';

class PriorityDropdown extends StatelessWidget {
  const PriorityDropdown({super.key, required this.priorityOptions});

  final List<String> priorityOptions;

  @override
  Widget build(BuildContext context) {
    final filterController = FilterController.instance;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Priority',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        ),
        const SizedBox(height: 8),
        Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: Colors.grey, width: 1.5),
          ),
          child: DropdownButtonHideUnderline(
            child: Obx(() {
              return DropdownButton<String>(
                icon: const Icon(Icons.keyboard_arrow_down),
                value:
                    filterController.selectedPriority.isEmpty ||
                        filterController.selectedPriority.value ==
                            'Select priority'
                    ? null
                    : filterController.selectedPriority.value,
                onChanged: (value) {
                  if (value != null) {
                    filterController.selectedPriority.value = value;
                  }
                },
                items: priorityOptions.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                  );
                }).toList(),
                hint: const Text("Select priority"),
                isExpanded: true,
              );
            }),
          ),
        ),
      ],
    );
  }
}
