import 'package:core_fit/core/theming/colors.dart';
import 'package:flutter/material.dart';

class IncreaseOrDecreseIcon extends StatelessWidget {
  final Function()? onTap;
  final bool isIncrease;
  final Color? color;
  const IncreaseOrDecreseIcon({
    super.key,
    this.onTap,
    required this.isIncrease, this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color ?? AppColors.white,
        ),
        child: Icon(isIncrease ? Icons.add : Icons.remove, color: AppColors.dark),
      ),
    );
  }
}
