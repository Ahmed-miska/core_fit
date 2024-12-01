import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TypesItemInStoreDetails extends StatelessWidget {
  final String name;
  final bool isSelected;
  const TypesItemInStoreDetails({
    super.key,
    required this.name,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 2.h),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.main : AppColors.mainBG,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(child: Text(name, style: isSelected ? TextStyles.font12White600 : TextStyles.font12Dark600)),
    );
  }
}
