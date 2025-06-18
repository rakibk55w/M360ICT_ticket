import 'package:flutter/material.dart';

class TicketsDashboard extends StatelessWidget {
  const TicketsDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('7 tickets'),
          IconButton(onPressed: (){}, icon: const Icon(Icons.filter_alt_outlined))
        ],
      ),
    );
  }
}
