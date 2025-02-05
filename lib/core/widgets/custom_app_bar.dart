import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/back_arrow.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: TextStyles.b16),
      elevation: 0,
      backgroundColor: Colors.white,
      leading: const BackArrow(),
      scrolledUnderElevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
