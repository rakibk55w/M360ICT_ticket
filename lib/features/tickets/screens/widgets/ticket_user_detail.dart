import 'package:flutter/material.dart';

class TicketUserDetail extends StatelessWidget {
  const TicketUserDetail({
    super.key,
    required this.name,
    required this.date,
    required this.time,
  });

  final String name;
  final String date;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(name),
        const SizedBox(width: 6),
        Container(
          width: 4,
          height: 4,
          decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
        ),
        const SizedBox(width: 6),
        Text(date),
        const SizedBox(width: 6),
        Text(time),
      ],
    );
  }
}
