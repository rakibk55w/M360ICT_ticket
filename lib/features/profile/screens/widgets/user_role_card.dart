import 'package:flutter/material.dart';
import 'package:m360ict/common/utils/colors.dart';

class UserRoleCard extends StatelessWidget {
  const UserRoleCard({
    super.key,
    required this.headingRole,
    required this.groupName,
    required this.managerImage,
    required this.managerName,
  });

  final String headingRole;
  final String groupName;
  final String managerImage;
  final String managerName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Container(
        width: 330,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
          color: AppColors.ticketColorBg,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(headingRole, style: const TextStyle(fontSize: 20)),
              const Divider(),
              const Text('Group', style: TextStyle(fontSize: 11)),
              Text(groupName, style: const TextStyle(fontSize: 13)),
              SizedBox(height: 8),
              const Text('Manager', style: TextStyle(fontSize: 11)),
              const SizedBox(height: 4),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(managerImage),
                    radius: 12,
                  ),
                  const SizedBox(width: 8),
                  Text(managerName),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
