import 'package:core_fit/core/theming/colors.dart';
import 'package:flutter/material.dart';

class CustomRefreshIndicator extends StatelessWidget {
  final Widget child;
  final Function onRefresh;
  const CustomRefreshIndicator({super.key, required this.child, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      backgroundColor: AppColors.white,
      color: AppColors.main,
      onRefresh: () async {
        onRefresh();
        Future.value();
      },
      child: child,
    );
  }
}
