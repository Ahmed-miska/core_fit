import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/features/market/market_home/data/item_types_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TypesItemInStores extends StatelessWidget {
  final ItemTypesModel model;
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
          SvgPicture.asset(model.image, color: isSelected ? AppColors.white : AppColors.main),
          horizontalSpace(10),
          Text(model.title, style: isSelected ? TextStyles.font12White400 : TextStyles.font12Dark600),
        ],
      ),
    );
  }
}
