import 'package:core_fit/core/theming/colors.dart';
import 'package:flutter/material.dart';

class AnimatedFavoriteSportItem extends StatelessWidget {
  const AnimatedFavoriteSportItem({
    super.key,
    required this.isSelected,
  });

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      transitionBuilder: (child, animation) {
        return SlideTransition(
          position: Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero).animate(animation),
          child: FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
      },
      child: isSelected ? const Icon(Icons.check, key: ValueKey('icon1'), color: AppColors.dark) : const Icon(Icons.add, key: ValueKey('icon2'), color: AppColors.text),
    );
  }
}
