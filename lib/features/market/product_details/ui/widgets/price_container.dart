import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';

class PriceContainer extends StatelessWidget {
  const PriceContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.white,
      ),
      child: Row(
        children: [
          Text('Price : ', style: TextStyles.font12Dark600),
          const Spacer(),
          Text('699', style: TextStyles.font12Gray400.copyWith(decoration: TextDecoration.lineThrough)),
          horizontalSpace(4),
          Text('EG', style: TextStyles.font12Gray400.copyWith(decoration: TextDecoration.lineThrough)),
          horizontalSpace(6),
          Text('499', style: TextStyles.font16Dark700),
          horizontalSpace(4),
          Text('EG', style: TextStyles.font12Dark400),
        ],
      ),
    );
  }
}
