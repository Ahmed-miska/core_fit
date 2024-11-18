import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/features/auth/sign_up/ui/widgets/animated_favorite_sport_item.dart';
import 'package:flutter/material.dart';

class FavoriteSportsCard extends StatefulWidget {
  const FavoriteSportsCard({super.key});

  @override
  State<FavoriteSportsCard> createState() => _FavoriteSportsCardState();
}

class _FavoriteSportsCardState extends State<FavoriteSportsCard> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: isSelected ? Colors.transparent : AppColors.text.withOpacity(0.3)),
          color: isSelected ? AppColors.mainBG : Colors.transparent,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedFavoriteSportItem(isSelected: isSelected),
            horizontalSpace(10),
            Text('Basketball', style: TextStyles.font14Gray400.copyWith(fontWeight: FontWeight.w700, color: isSelected ? AppColors.main : AppColors.text)),
          ],
        ),
      ),
    );
  }
}
