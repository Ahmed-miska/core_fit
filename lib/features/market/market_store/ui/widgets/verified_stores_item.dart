import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
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
    return Container(
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
                  color: model.isClosed ? Colors.black.withOpacity(0.6) : Colors.transparent,
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(model.image, fit: BoxFit.fill),
                    if (model.isClosed) Align(alignment: Alignment.center, child: Text('Closed', style: TextStyles.font16White700)),
                  ],
                ),
              ),
            ),
          ),
          Text(model.title, style: TextStyles.font14Dark400, maxLines: 1),
          Text(model.subtitle, style: TextStyles.font12Main600, maxLines: 1),
          verticalSpace(4),
        ],
      ),
    );
  }
}
