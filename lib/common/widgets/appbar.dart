import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m360ict/common/utils/device_utility.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.actions,
  });

  final Widget? title;
  final bool showBackArrow;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: title,
      actions: actions,
      centerTitle: true,
      leading: showBackArrow
          ? IconButton(
              onPressed: () => Get.back(),
              icon: Image.asset(
                'assets/icons/close.png',
                height: 13,
                width: 13,
              ),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppDeviceUtils.getAppbarHeight());
}
