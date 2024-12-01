import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/custom_cached_image.dart';
import 'package:core_fit/features/market/market_home/data/market_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerfiedStoresItem extends StatelessWidget {
  final MarketModel model;
  const VerfiedStoresItem({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await context.pushNamed(Routes.storeDetailsScreen);
      },
      child: Container(
        width: 100.w,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.text.withOpacity(0.2)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 0),
                        blurRadius: 0,
                        color: Colors.black.withOpacity(0.05),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        CustomCachedImage(imageUrl: model.image),
                        if (model.isClosed) Container(color: AppColors.dark.withOpacity(0.7)),
                        if (model.isClosed) Align(alignment: Alignment.center, child: Text('Closed', style: TextStyles.font16White700)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Text(model.title, style: TextStyles.font14Dark400, maxLines: 1, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center),
            Text(model.subtitle, style: TextStyles.font12Main600, maxLines: 1, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center),
            verticalSpace(4),
          ],
        ),
      ),
    );
  }
}
