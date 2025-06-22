import 'package:flutter/material.dart';
import 'package:m360ict/common/utils/colors.dart';

class CustomSearchbar extends StatelessWidget {
  const CustomSearchbar({super.key, required this.hintText, this.onChanged});

  final String hintText;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.searchBarBackgroundColor,
        contentPadding: const EdgeInsets.symmetric(horizontal: 6),
        prefixIcon: const Icon(Icons.search),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: AppColors.searchbarHintTextColor,
          fontWeight: FontWeight.w500,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
