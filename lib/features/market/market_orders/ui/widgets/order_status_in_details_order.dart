import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class OrderStatusInDetailsOrder extends StatelessWidget {
  const OrderStatusInDetailsOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.white,
        border: Border.all(color: AppColors.lightGrey),
        boxShadow: const [
          BoxShadow(
            color: AppColors.lightGrey,
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(Assets.order1),
              horizontalSpace(12),
              Text('Your request has been sent.', style: TextStyles.font14Dark700),
            ],
          ),
          verticalSpace(12),
          LinearPercentIndicator(
            padding: EdgeInsets.zero,
            animation: true,
            animationDuration: 1000,
            lineHeight: 10,
            percent: 0.3,
            barRadius: const Radius.circular(100),
            backgroundColor: AppColors.lightGrey,
            progressColor: AppColors.main,
          ),
        ],
      ),
    );
  }
}
