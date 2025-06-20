import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffect extends StatelessWidget {
  const ShimmerEffect({
    super.key,
    this.width,
    this.height,
    this.radius = 15,
    this.color,
    this.child,
  }) : assert(child != null || (width != null && height != null));

  final double? width, height;
  final double radius;
  final Color? color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child:
          child ??
          Container(
            width: width!,
            height: height!,
            decoration: BoxDecoration(
              color: color ?? Colors.white,
              borderRadius: BorderRadius.circular(radius),
            ),
          ),
    );
  }
}
