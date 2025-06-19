import 'package:flutter/material.dart';
import 'package:m360ict/common/utils/colors.dart';
import 'package:m360ict/common/utils/device_utility.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    super.key,
    required this.contactImage,
    required this.contactName,
    required this.contactEmail,
    required this.contactPhone,
    this.contactAddress,
  });

  final String contactImage;
  final String contactName;
  final String contactEmail;
  final String contactPhone;
  final String? contactAddress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppDeviceUtils.getScreenWidth(context),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.ticketColorBg,
      ),
      child: Column(
        children: [
          Row(
            children: [
              /// - User picture
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(contactImage),
              ),
              const SizedBox(width: 8),

              /// - User name
              Text(contactName),
              const Spacer(),

              /// - More options
              PopupMenuButton<String>(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                offset: const Offset(0, 40),
                constraints: const BoxConstraints(minWidth: 200),
                color: Colors.white,
                icon: const Icon(Icons.more_horiz, size: 25),
                onSelected: (value) {},
                itemBuilder: (context) => [
                  const PopupMenuItem(value: 'edit', child: Text('Edit')),
                  const PopupMenuItem(
                    value: 'view',
                    child: Text('View Tickets'),
                  ),
                  const PopupMenuItem(value: 'delete', child: Text('Delete')),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),

          /// - User email
          Row(
            children: [
              const Icon(Icons.email_outlined, size: 15),
              const SizedBox(width: 4),
              Text(contactEmail),
            ],
          ),

          /// - User phone number
          Row(
            children: [
              const Icon(Icons.wifi_calling_3_outlined, size: 15),
              const SizedBox(width: 4),
              Text(contactPhone),
            ],
          ),

          /// - User address
          Row(
            children: [
              const Icon(Icons.location_on_outlined, size: 15),
              const SizedBox(width: 4),
              Text(contactAddress ?? 'Not added yet'),
            ],
          ),
        ],
      ),
    );
  }
}
