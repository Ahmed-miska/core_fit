import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        padding: WidgetStateProperty.all(const EdgeInsets.all(10)),
        backgroundColor: WidgetStateProperty.all(AppColors.main),
        shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      ),
      child: Row(
        children: [
          Text('Add to cart', style: TextStyles.font16White700),
          horizontalSpace(8),
          // ignore: deprecated_member_use
          SvgPicture.asset(Assets.ordersGreen, color: AppColors.white),
        ],
      ),
    );
  }
}
