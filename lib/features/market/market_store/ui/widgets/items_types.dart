import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/networking/api_constants.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/features/market/market_store/data/models/categories_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ItemsTypesContainer extends StatelessWidget {
  final Category model;
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
                child: model.imageUrl == null ? SvgPicture.asset(Assets.logo) : SvgPicture.asset(Assets.logo)
                // : SvgPicture.network(
                //     ApiConstants.apiBaseUrl + model.imageUrl!,
                //     placeholderBuilder: (context) => const Icon(Icons.image),
                //     errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
                //   ),
                ),
            verticalSpace(5),
            Expanded(child: Text(model.name ?? '', style: TextStyles.font12Dark600, textAlign: TextAlign.center, maxLines: 2)),
          ],
        ),
      ),
    );
  }
}
