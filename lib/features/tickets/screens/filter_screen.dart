import 'package:flutter/material.dart';
import 'package:m360ict/common/utils/colors.dart';
import 'package:m360ict/common/widgets/appbar.dart';
import 'package:m360ict/common/widgets/searchbar.dart';
import 'package:m360ict/features/tickets/screens/widgets/filter_status_options.dart';
import 'package:m360ict/features/tickets/screens/widgets/priority_dropdown.dart';

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
      appBar: CustomAppbar(
        title: Text('Filters', style: TextStyle(fontSize: 16)),
        showBackArrow: true,
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
            Column(children: [Text('Status')]),
            FilterStatusOptions(options: options, selectedIndex: selectedIndex),
            const SizedBox(height: 16),
            PriorityDropdown(priorityOptions: priorityOptions),
            const SizedBox(height: 8),

            const Text('Tags'),

            const SizedBox(height: 8),
            CustomSearchbar(hintText: 'Search tags',),
          ],
        ),
      ),
    );
  }
}


