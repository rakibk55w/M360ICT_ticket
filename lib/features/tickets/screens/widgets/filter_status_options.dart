import 'package:flutter/material.dart';
import 'package:m360ict/common/utils/colors.dart';

class FilterStatusOptions extends StatelessWidget {
  const FilterStatusOptions({
    super.key,
    required this.options,
    required this.selectedIndex,
  });

  final List<String> options;
  final int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(options.length, (index) {
        return GestureDetector(
          onTap: () {},
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Transform.scale(
                scale: 0.8,
                child: Checkbox(
                  visualDensity: VisualDensity.compact,
                  value: selectedIndex == index,
                  onChanged: (_) {},
                  activeColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              Text(options[index], style: const TextStyle(color: AppColors.filterOptionsTextColor, fontWeight: FontWeight.w400),),
            ],
          ),
        );
      }),
    );
  }
}
