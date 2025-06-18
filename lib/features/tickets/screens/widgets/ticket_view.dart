import 'package:flutter/material.dart';
import 'package:m360ict/common/utils/colors.dart';
import 'package:m360ict/common/utils/device_utility.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        width: AppDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.ticketColorBg,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FilterStatus(),
            const SizedBox(height: 6),
            Text('#ID 132198423'),
            const SizedBox(height: 6),
            Text(
              'Search view, which can display dynamic suggestions, is the focused state of search bar.',
            ),
            const SizedBox(height: 6),
            Row(
              children: [
                Text('Michale'),
                const SizedBox(width: 6),
                Container(
                  width: 4,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 6),
                Text('23 Dec 2023'),
                const SizedBox(width: 6),
                Text('03:43 PM'),
              ],
            ),
            Divider(),
            const SizedBox(height: 6),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.chipBorderColor.withAlpha(
                        (255 * 0.5).toInt(),
                      ),
                    ),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 6,
                        width: 6,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          color: AppColors.low,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const Text('Low'),
                    ],
                  ),
                ),

                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.chipBorderColor.withAlpha(
                        (255 * 0.5).toInt(),
                      ),
                    ),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Center(child: Text('Open')),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}