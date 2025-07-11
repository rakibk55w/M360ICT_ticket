import 'package:flutter/material.dart';
import 'package:m360ict/common/widgets/appbar.dart';
import 'package:get/get.dart';
import 'package:m360ict/common/widgets/searchbar.dart';
import 'package:m360ict/features/tickets/controllers/filter_controller.dart';
import 'package:m360ict/features/tickets/screens/widgets/filter_status_options.dart';
import 'package:m360ict/features/tickets/screens/widgets/filter_status_shimmer.dart';
import 'package:m360ict/features/tickets/screens/widgets/priority_dropdown.dart';
import 'package:m360ict/features/tickets/screens/widgets/ticket_progress_chip.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final filterController = Get.put(FilterController());

    final priorityOptions = ['Select priority', 'Low', 'Medium', 'Urgent'];
    final tagOptions = ['Open', 'Closed', 'Spam'];

    return Scaffold(
      /// - Appbar
      appBar: CustomAppbar(
        title: const Text(
          'Filters',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        showBackArrow: true,

        /// - Apply button
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Apply', style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// - Status heading text
            const Column(
              children: [
                Text(
                  'Status',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
              ],
            ),

            /// - Status options
            Obx(
              () => SizedBox(
                child: filterController.isStatusLoading.value
                    ? FilterStatusShimmer()
                    : const FilterStatusOptions(),
              ),
            ),
            const SizedBox(height: 16),

            /// - Priority options
            PriorityDropdown(priorityOptions: priorityOptions),
            const SizedBox(height: 8),

            /// - Tags heading text
            const Text(
              'Tags',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
            ),
            const SizedBox(height: 8),

            /// - Search bar
            const CustomSearchbar(hintText: 'Search tags'),
            const SizedBox(height: 16),

            /// - Progress filters
            Obx(() {
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(tagOptions.length, (index) {
                  final isSelected =
                      filterController.selectedTagIndex.value == index;

                  return GestureDetector(
                    onTap: () {
                      filterController.selectedTagIndex.value =
                          filterController.selectedTagIndex.value == index
                          ? -1
                          : index;
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: TicketProgressChip(
                        progressTitle: tagOptions[index],
                        isSelected: isSelected,
                      ),
                    ),
                  );
                }),
              );
            }),
          ],
        ),
      ),
    );
  }
}
