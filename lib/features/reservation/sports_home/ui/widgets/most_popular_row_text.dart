import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';

class MostPopularTextRow extends StatelessWidget {
  final String title;
  final String subtitle;
  final void Function() onPressed;
  const MostPopularTextRow({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: mainPadding(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyles.font18Dark700),
                Text(subtitle, style: TextStyles.font14Gray400),
              ],
            ),
          ),
          TextButton(
            onPressed: onPressed,
            style: ButtonStyle(
              padding: WidgetStateProperty.all(const EdgeInsets.all(12)),
              shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
              backgroundColor: WidgetStateProperty.all(AppColors.mainBG),
            ),
            child: Text('Show all', style: TextStyles.font12Main600),
          ),
        ],
      ),
    );
  }
}
