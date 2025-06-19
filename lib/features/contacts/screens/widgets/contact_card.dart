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
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(contactImage),
              ),
              SizedBox(width: 8),
              Text(contactName),
              Spacer(),
              //IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz, size: 25),)
              PopupMenuButton<String>(
                offset: Offset(0, 40),
                constraints: BoxConstraints(minWidth: 200),
                color: Colors.white,
                icon: Icon(Icons.more_horiz, size: 25,),
                onSelected: (value) {},
                itemBuilder: (context) => [
                  PopupMenuItem(value: 'edit', child: Text('Edit')),
                  PopupMenuItem(value: 'view', child: Text('View Tickets')),
                  PopupMenuItem(value: 'delete', child: Text('Delete')),
                ],
              )

            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Icon(Icons.email_outlined, size: 15),
              SizedBox(width: 4),
              Text(contactEmail),
            ],
          ),
          Row(
            children: [
              Icon(Icons.wifi_calling_3_outlined, size: 15),
              SizedBox(width: 4),
              Text(contactPhone),
            ],
          ),
          Row(
            children: [
              Icon(Icons.location_on_outlined, size: 15),
              SizedBox(width: 4),
              Text(contactAddress ?? 'Not added yet'),
            ],
          ),
        ],
      ),
    );
  }
}
