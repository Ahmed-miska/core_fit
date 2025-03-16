import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../market_store/data/models/categories_response_model.dart';

class TypesItemInStores extends StatelessWidget {
  final Category model;
  final bool isSelected;
  const TypesItemInStores({
    super.key,
    required this.model,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: isSelected ? AppColors.main : AppColors.mainBG,
        border: Border.all(color: AppColors.lightGrey),
      ),
      duration: const Duration(milliseconds: 400),
      child: Row(
        children: [
          // ignore: deprecated_member_use
          model.imageUrl == null
              // ignore: deprecated_member_use
              ? SizedBox(height: 20, width: 20, child: SvgPicture.asset(Assets.logo, color: isSelected ? AppColors.white : AppColors.main))
              // ignore: deprecated_member_use
              : SizedBox(height: 20, width: 30, child: SvgPicture.network(model.imageUrl ?? '', color: isSelected ? AppColors.white : AppColors.main)),
          horizontalSpace(10),
          Text(model.name ?? '', style: isSelected ? TextStyles.font12White400 : TextStyles.font12Dark600),
        ],
      ),
    );
  }
}
