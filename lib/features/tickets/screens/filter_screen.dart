import 'package:flutter/material.dart';
import 'package:m360ict/common/widgets/appbar.dart';

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
            Column(
              children: [Text('Status')],
            ),
            Column(
              children: List.generate(options.length, (index) {
                return GestureDetector(
                  onTap: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Transform.scale(
                        scale: 0.8,
                        child: Checkbox(
                          value: selectedIndex == index,
                          onChanged: (_) {},
                          activeColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(options[index]),
                    ],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
