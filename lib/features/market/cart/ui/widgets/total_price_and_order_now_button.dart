import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';

class TotalPriceAndOrderNowButton extends StatelessWidget {
  final void Function()? onPressed;
  const TotalPriceAndOrderNowButton({
    super.key, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 12,
            offset: const Offset(0, -2),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Text('Total Price : ', style: TextStyles.font12Dark600),
            horizontalSpace(8),
            Text('699', style: TextStyles.font16Dark700),
            horizontalSpace(4),
            Text('EG', style: TextStyles.font12Dark400),
            const Spacer(),
            ElevatedButton(
              onPressed: onPressed,
              style: ButtonStyle(
                padding: WidgetStateProperty.all(const EdgeInsets.all(10)),
                backgroundColor: WidgetStateProperty.all(AppColors.main),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
              ),
              child: Text('Order Now', style: TextStyles.font16White700),
            )
          ],
        ),
      ),
    );
  }
}
