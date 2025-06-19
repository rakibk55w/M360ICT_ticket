import 'package:flutter/material.dart';
import 'package:m360ict/common/widgets/appbar.dart';
import 'package:m360ict/features/tickets/screens/widgets/filter_status_options.dart';

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Priority'),
                const SizedBox(height: 8,),
                Container(
                  height: 51,
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: Colors.grey, width: 1.5),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      icon: Icon(Icons.keyboard_arrow_down),
                      value: null,
                      onChanged: (_) {},
                      items: priorityOptions.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      hint: const Text("Select priority"),
                      isExpanded: true,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
