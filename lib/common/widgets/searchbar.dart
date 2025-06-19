import 'package:flutter/material.dart';
import 'package:m360ict/common/utils/colors.dart';

class CustomSearchbar extends StatelessWidget {
  const CustomSearchbar({super.key, required this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.searchBarBackgroundColor,
        contentPadding: const EdgeInsets.symmetric(horizontal: 6),
        prefixIcon: const Icon(Icons.search),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
