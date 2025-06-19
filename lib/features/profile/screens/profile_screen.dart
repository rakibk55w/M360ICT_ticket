import 'package:flutter/material.dart';
import 'package:m360ict/common/utils/colors.dart';
import 'package:m360ict/common/utils/device_utility.dart';
import 'package:m360ict/common/widgets/appbar.dart';
import 'package:m360ict/features/profile/screens/widgets/profile_tile.dart';
import 'package:m360ict/features/profile/screens/widgets/user_role_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// - Appbar
      appBar: const CustomAppbar(title: Text('My Profile')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// - Profile tile
          const ProfileTile(
            profileName: 'Jonaus Kahnwald',
            profileRole: 'Support',
            profileImage: 'assets/images/elon_musk.jpg',
          ),

          /// - Basic info heading text
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: const Text('Basic Info'),
          ),

          /// - User details
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('First Name'),
                const Text('Jonaus'),
                const SizedBox(height: 8),
                const Text('Last Name'),
                const Text('Kahnwald'),
                const SizedBox(height: 8),
                const Text('Email'),
                const Text('username@email.com'),
              ],
            ),
          ),

          /// - Basic info heading text
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: const Text('Assigned roles (3)'),
          ),

          /// - List of roles
          SizedBox(
            height: 200,
            child:
               ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                separatorBuilder: (context, index) => const SizedBox(width: 8),
                itemBuilder: (context, index) => const UserRoleCard(
                  headingRole: 'Manager',
                  groupName: 'Codecayaneon support',
                  managerImage: 'assets/images/elon_musk.jpg',
                  managerName: 'Jonaus Kahnwald',
                ),
              ),
          ),

          /// - Logout button
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
            child: GestureDetector(
              onTap: (){},
              child: Container(
                padding: const EdgeInsets.only(right: 8),
                width: AppDeviceUtils.getScreenWidth(context),
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.logoutButtonColor
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.logout, size: 16, color: AppColors.logoutTextColor,),
                    const SizedBox(width: 8,),
                    const Text('Logout', style: TextStyle(color: AppColors.logoutTextColor)),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
