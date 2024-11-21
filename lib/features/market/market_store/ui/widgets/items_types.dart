import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/features/market/market_home/data/item_types_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ItemsTypesContainer extends StatelessWidget {
  final ItemTypesModel model;
  const ItemsTypesContainer({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 65.w,
        height: 90.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: double.infinity,
              height: 55.h,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: AppColors.mainBG),
              child: SvgPicture.asset(model.image),
            ),
            Expanded(child: Text(model.title, style: TextStyles.font12Dark600, textAlign: TextAlign.center, maxLines: 2)),
          ],
        ),
      ),
    );
  }
}
