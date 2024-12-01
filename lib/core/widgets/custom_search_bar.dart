import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      padding: WidgetStateProperty.all(const EdgeInsets.only(left: 8)),
      elevation: const WidgetStatePropertyAll(0),
      backgroundColor: WidgetStateProperty.all(AppColors.lightGrey),
      hintText: 'search for stores',
      hintStyle: WidgetStateProperty.all(TextStyles.font12Gray400),
      shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      trailing: Iterable.castFrom([
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.main,
          ),
          child: const Padding(
            padding: EdgeInsets.all(12),
            child: Icon(Icons.search, color: AppColors.white, size: 32),
          ),
        )
      ]),
    );
  }
}
