import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m360ict/common/loader/shimmer.dart';
import 'package:m360ict/common/utils/device_utility.dart';
import 'package:m360ict/common/widgets/appbar.dart';
import 'package:m360ict/common/widgets/notification_icon.dart';
import 'package:m360ict/common/widgets/searchbar.dart';
import 'package:m360ict/common/widgets/summary_dashboard.dart';
import 'package:m360ict/features/contacts/controllers/contact_controller.dart';
import 'package:m360ict/features/contacts/screens/widgets/contact_card.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final contactController = Get.put(ContactController());

    return Scaffold(
      /// - Appbar
      appBar: const CustomAppbar(
        title: Text('M360ICT'),
        actions: [NotificationWithCounter()],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),

        /// - Swipe down to refresh/reload
        child: RefreshIndicator(
          onRefresh: () async {
            await contactController.fetchContacts();
          },
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                /// - Search bar
                CustomSearchbar(
                  hintText: 'Search contacts',
                  onChanged: (value) {
                    contactController.searchContacts(value);
                    contactController.isSearching.value = true;
                  },
                ),

                /// - No. of contacts
                Obx(
                  () => SummaryDashboard(
                    dashboardText:
                        '${contactController.isSearching.value ? contactController.filteredContacts.length : contactController.contacts.length} contacts',
                    padding: const EdgeInsets.only(left: 0, top: 16, bottom: 8),
                  ),
                ),
                const SizedBox(height: 8),

                Obx(() {
                  /// - Showing loading animation while the contacts load
                  if (contactController.isContactLoading.value) {
                    return ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      separatorBuilder: (context, __) =>
                          const SizedBox(height: 10),
                      itemBuilder: (context, index) {
                        return ShimmerEffect(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                            ),
                            child: Container(
                              width: AppDeviceUtils.getScreenWidth(context),
                              height: 140,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }

                  /// - Condition for empty api response or empty search result, allowing user to refresh even if there is nothing on screen
                  if (contactController.isSearching.value
                      ? contactController.filteredContacts.isEmpty
                      : contactController.contacts.isEmpty) {
                    return SizedBox(
                      width: AppDeviceUtils.getScreenWidth(context),
                      height: AppDeviceUtils.getScreenHeight(context) * 0.7,
                    );
                  }

                  /// - Contact cards for showing data
                  return ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: contactController.isSearching.value
                        ? contactController.filteredContacts.length
                        : contactController.contacts.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                    itemBuilder: (context, index) {
                      final contact = contactController.isSearching.value
                          ? contactController.filteredContacts[index]
                          : contactController.contacts[index];

                      return ContactCard(
                        contactImage: 'assets/images/elon_musk.jpg',
                        contactName: contact.name,
                        contactEmail: contact.email,
                        contactPhone: contact.phone,
                        contactAddress: contact.address,
                      );
                    },
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
