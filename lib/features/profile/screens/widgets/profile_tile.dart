import 'package:flutter/material.dart';
import 'package:m360ict/common/utils/colors.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key,
    required this.profileName,
    required this.profileRole,
    required this.profileImage,
  });

  final String profileName;
  final String profileRole;
  final String profileImage;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(profileName, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
      subtitle: Text(profileRole, style: const TextStyle(color: AppColors.roleTextColor, fontWeight: FontWeight.w800),),
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(profileImage),
      ),
      trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
      tileColor: AppColors.profileTileColor,
      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
    );
  }
}
