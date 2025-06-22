import 'package:flutter/material.dart';
import 'package:m360ict/common/loader/shimmer.dart';

class FilterStatusShimmer extends StatelessWidget {
  const FilterStatusShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(3, (_) {
        return Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 12.0),
          child: Row(
            children: [
              ShimmerEffect(
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(width: 10),
              ShimmerEffect(
                child: Container(
                  height: 30,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
