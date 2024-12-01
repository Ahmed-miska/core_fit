import 'package:core_fit/core/helpers/test_lists.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/features/market/market_store/ui/widgets/verified_stores_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoresListView extends StatelessWidget {
  const StoresListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      crossAxisAlignment: WrapCrossAlignment.center,
      runSpacing: 10.h,
      spacing: 10.w,
      children: List.generate(
        testMarket.length,
        (index) => Container(
          color: AppColors.mainBG,
          width: 110.w,
          height: 150.h,
          child: VerfiedStoresItem(
            model: testMarket[index],
          ),
        ),
      ),
    );
  }
}
