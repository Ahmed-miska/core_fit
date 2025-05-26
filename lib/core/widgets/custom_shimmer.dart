import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CustomShimmer extends StatelessWidget {
  final Widget child;
  final bool? enabled;
  const CustomShimmer({super.key, required this.child, this.enabled});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      // enabled: enabled ?? true,
      // ignoreContainers: false,
      containersColor: Colors.transparent,
      effect: ShimmerEffect(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        duration: const Duration(seconds: 1),
      ),
      child: child,
    );
  }
}
