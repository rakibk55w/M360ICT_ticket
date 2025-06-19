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
        children: [
          /// - Profile tile
          ProfileTile(
            profileName: 'Jonaus Kahnwald',
            profileRole: 'Support',
            profileImage: 'assets/images/elon_musk.jpg',
          ),
        ],
      ),
    );
  }
}
