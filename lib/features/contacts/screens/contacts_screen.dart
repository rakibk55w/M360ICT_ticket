import 'package:flutter/material.dart';
import 'package:m360ict/common/utils/colors.dart';
import 'package:m360ict/common/utils/device_utility.dart';
import 'package:m360ict/common/widgets/appbar.dart';
import 'package:m360ict/common/widgets/notification_icon.dart';
import 'package:m360ict/common/widgets/searchbar.dart';
import 'package:m360ict/features/contacts/screens/widgets/contact_card.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Text('M360ICT'),
        actions: [NotificationWithCounter()],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          children: [
            const CustomSearchbar(hintText: 'Search contacts'),
            const SizedBox(height: 8),
            ContactCard(
              contactImage: 'assets/images/elon_musk.jpg',
              contactName: 'Elon Musk',
              contactEmail: 'michel@email.com',
              contactPhone: '+12 34 56 78 90',
              contactAddress: '12A, Lillistrom, Norway',
            ),
          ],
        ),
      ),
    );
  }
}
