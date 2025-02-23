import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/custom_cached_image.dart';
import 'package:core_fit/features/market/market_store/data/models/markets_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerfiedStoresItem extends StatelessWidget {
  final Market model;
  const VerfiedStoresItem({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await context.pushNamed(Routes.storeDetailsScreen, arguments: model.id);
      },
      child: Container(
        width: 100.w,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),
          // ignore: deprecated_member_use
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
                        CustomCachedImage(imageUrl: model.imageUrl ?? ''),
                        // ignore: deprecated_member_use
                        if (!model.opened!) Container(color: AppColors.dark.withOpacity(0.7)),
                        if (!model.opened!) Align(alignment: Alignment.center, child: Text('Closed', style: TextStyles.font16White700)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Text(model.name ?? '', style: TextStyles.font14Dark400, maxLines: 1, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center),
            Text(model.description ?? '', style: TextStyles.font12Main600, maxLines: 1, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center),
            verticalSpace(4),
          ],
        ),
      ),
    );
  }
}
