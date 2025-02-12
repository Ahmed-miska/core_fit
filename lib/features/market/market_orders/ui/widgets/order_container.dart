import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';

class OrderContainer extends StatelessWidget {
  const OrderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: AppColors.inputBG, boxShadow: [
        BoxShadow(
          // ignore: deprecated_member_use
          color: AppColors.dark.withOpacity(.1),
          blurRadius: 2,
          offset: const Offset(0, 6),
        )
      ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Text(' #   ', style: TextStyles.font18Main600),
              Text('Order Number : ', style: TextStyles.font14Dark400),
              Text('1234 #', style: TextStyles.font14Main700),
              const Spacer(),
              TextButton(
                onPressed: () {
                  context.pushNamed(Routes.orderDetailsScreen);
                },
                style: ButtonStyle(
                  // ignore: deprecated_member_use
                  backgroundColor: WidgetStateProperty.all(AppColors.main.withOpacity(.2)),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text('Details', style: TextStyles.font12Main600),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Icon(Icons.location_on_outlined, color: AppColors.main),
              Text('  Location : ', style: TextStyles.font14Dark400),
              Text('Cairo, Egypt', style: TextStyles.font14Main700),
            ],
          ),
          verticalSpace(12),
          Row(
            children: [
              Text('Status : ', style: TextStyles.font14Dark400),
              Text('Delivered', style: TextStyles.font14Main700),
            ],
          ),
          verticalSpace(2),
          Row(
            children: [
              const Spacer(),
              Text('2024/11/29', style: TextStyles.font12Gray400),
            ],
          ),
        ],
      ),
    );
  }
}
