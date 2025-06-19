import 'package:flutter/material.dart';
import 'package:m360ict/common/utils/colors.dart';
import 'package:m360ict/common/widgets/appbar.dart';
import 'package:m360ict/features/profile/screens/widgets/profile_tile.dart';

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
                Text('First Name'),
                Text('Jonaus'),
                SizedBox(height: 8),
                Text('Last Name'),
                Text('Kahnwald'),
                SizedBox(height: 8),
                Text('Email'),
                Text('username@email.com'),
              ],
            ),
          ),

          /// - Basic info heading text
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: const Text('Assigned roles (3)'),
          ),

          /// - List of roles
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
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
                    Text('Manager', style: TextStyle(fontSize: 20),),
                    Divider(),
                    Text('Group', style: TextStyle(fontSize: 11),),
                    Text('Codecayaneon support', style: TextStyle(fontSize: 13),),
                    SizedBox(height: 8,),
                    Text('Manager', style: TextStyle(fontSize: 11),),
                    SizedBox(height: 4,),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/elon_musk.jpg',
                          ),
                          radius: 12,
                        ),
                        SizedBox(width: 8,),
                        Text('Jonaus Kahnwald')
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
