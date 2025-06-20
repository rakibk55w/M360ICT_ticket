import 'package:flutter/material.dart';
import 'package:m360ict/common/utils/colors.dart';

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
        Text(name, style: const TextStyle(color: AppColors.ticketNameTextColor, fontWeight: FontWeight.w500, fontSize: 12)),
        const SizedBox(width: 6),
        Container(
          width: 4,
          height: 4,
          decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
        ),
        const SizedBox(width: 6),
        Text(date, style: const TextStyle(color: AppColors.ticketNameTextColor, fontWeight: FontWeight.w500, fontSize: 12)),
        const SizedBox(width: 6),
        Text(time, style: const TextStyle(color: AppColors.ticketNameTextColor, fontWeight: FontWeight.w500, fontSize: 12)),
      ],
    );
  }
}
