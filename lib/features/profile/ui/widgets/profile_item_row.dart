import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';

class ProfileItemRow extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function() onTap;
  const ProfileItemRow({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.white,
        ),
        child: Row(
          children: [
            Icon(icon, color: AppColors.main),
            horizontalSpace(8),
            Text(title, style: TextStyles.r14),
            const Spacer(),
            const Icon(Icons.chevron_right, color: AppColors.main),
          ],
        ),
      ),
    );
  }
}
