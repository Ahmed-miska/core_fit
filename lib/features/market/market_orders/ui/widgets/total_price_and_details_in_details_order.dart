import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/helpers/test_lists.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TotalPriceAndDetailsInDetailsOrder extends StatelessWidget {
  const TotalPriceAndDetailsInDetailsOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: AppColors.inputStroke, boxShadow: [
        BoxShadow(
          // ignore: deprecated_member_use
          color: AppColors.dark.withOpacity(.1),
          blurRadius: 2,
          offset: const Offset(0, 2),
        )
      ]),
      child: Column(
        children: [
          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(testProducts[index].title, style: TextStyles.font14Dark700, maxLines: 3, textAlign: TextAlign.start),
                      ),
                      horizontalSpace(8),
                      Text("x 2", style: TextStyles.font14Dark400),
                      horizontalSpace(8),
                      Text(testProducts[index].price, style: TextStyles.font16Dark700),
                      horizontalSpace(8),
                      Text('EG', style: TextStyles.font14Gray400),
                    ],
                  ),
                  Divider(color: AppColors.grey.withOpacity(.2), thickness: 1, height: 30.h),
                ],
              );
            },
          ),
          verticalSpace(10),
          Row(
            children: [
              Text('Total Price : ', style: TextStyles.font18Dark700),
              const Spacer(),
              Text('20', style: TextStyles.font18Main600),
              horizontalSpace(8),
              Text('EG', style: TextStyles.font14Main700),
            ],
          ),
        ],
      ),
    );
  }
}
