import 'package:flutter/material.dart';
import 'package:m360ict/common/widgets/appbar.dart';
import 'package:m360ict/common/widgets/searchbar.dart';
import 'package:m360ict/features/tickets/screens/widgets/filter_status_options.dart';
import 'package:m360ict/features/tickets/screens/widgets/priority_dropdown.dart';
import 'package:m360ict/features/tickets/screens/widgets/ticket_progress_chip.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final options = [
      'New',
      'First response overdue',
      'Customer responded',
      'Overdue',
    ];
    final int selectedIndex = 0;
    final priorityOptions = ['Low', 'Medium', 'Urgent'];
    return Scaffold(
      /// - Appbar
      appBar: CustomAppbar(
        title: const Text('Filters', style: TextStyle(fontSize: 16)),
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
            const Column(children: [Text('Status')]),

            /// - Status options
            FilterStatusOptions(options: options, selectedIndex: selectedIndex),
            const SizedBox(height: 16),

            /// - Priority options
            PriorityDropdown(priorityOptions: priorityOptions),
            const SizedBox(height: 8),

            /// - Tags heading text
            const Text('Tags'),
            const SizedBox(height: 8),

            /// - Search bar
            const CustomSearchbar(hintText: 'Search tags',),
            const SizedBox(height: 16),

            /// - Progress filters
            const Row(
              children: [
                TicketProgressChip(progressTitle: 'Open'),
                SizedBox(width: 8),
                TicketProgressChip(progressTitle: 'Spam', isSelected: true,),
                SizedBox(width: 8),
                TicketProgressChip(progressTitle: 'Closed',),
              ],
            )
          ],
        ),
      ),
    );
  }
}


