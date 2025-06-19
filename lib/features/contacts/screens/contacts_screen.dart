import 'package:flutter/material.dart';
import 'package:m360ict/common/widgets/appbar.dart';
import 'package:m360ict/common/widgets/notification_icon.dart';
import 'package:m360ict/common/widgets/searchbar.dart';
import 'package:m360ict/common/widgets/summary_dashboard.dart';
import 'package:m360ict/features/contacts/screens/widgets/contact_card.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// - Appbar
      appBar: const CustomAppbar(
        title: Text('M360ICT'),
        actions: [NotificationWithCounter()],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              /// - Search bar
              const CustomSearchbar(hintText: 'Search contacts'),

              /// - No. of contacts
              const SummaryDashboard(dashboardText: '10 contacts', padding: EdgeInsets.only(left: 0, top: 16, bottom: 8),),
              const SizedBox(height: 8),

              /// - Contact cards
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                separatorBuilder: (context, index) => const SizedBox(height: 10),
                itemBuilder: (context, index) => const ContactCard(
                  contactImage: 'assets/images/elon_musk.jpg',
                  contactName: 'Elon Musk',
                  contactEmail: 'michel@email.com',
                  contactPhone: '+12 34 56 78 90',
                  contactAddress: '12A, Lillistrom, Norway',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
