import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';

class ReservationsContainer extends StatelessWidget {
  const ReservationsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: AppColors.white, border: Border.all(color: AppColors.lightGrey)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Football', style: TextStyles.font12Main600),
          verticalSpace(8),
          Text('Santiago Bernabeu Stadium', style: TextStyles.font14Dark700),
          verticalSpace(8),
          Row(
            children: [
              const Icon(Icons.location_on_outlined, color: AppColors.main, size: 16),
              horizontalSpace(4),
              Text('Span , Madrid', style: TextStyles.font14Dark400),
              const Spacer(),
              Text('2.4 km', style: TextStyles.font16Dark700),
            ],
          ),
          verticalSpace(8),
          Row(
            children: [
              const Icon(Icons.calendar_month, color: AppColors.main, size: 16),
              horizontalSpace(4),
              Text('21/02/2023', style: TextStyles.font14Dark400),
              const Spacer(),
              const Icon(Icons.access_time, color: AppColors.main, size: 16),
              horizontalSpace(4),
              Text('21:00', style: TextStyles.font14Dark400),
              const Spacer(),
            ],
          ),
          verticalSpace(10),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.mainBG,
              border: Border.all(color: AppColors.main, width: .5),
            ),
            child: Row(
              children: [
                Text('Still 3 places available', style: TextStyles.font14Main700),
                horizontalSpace(40),
                const Spacer(),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(AppColors.main),
                    padding: WidgetStateProperty.all(const EdgeInsets.all(8)),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                  ),
                  onPressed: () {},
                  child: Text('Book now', style: TextStyles.font14White700),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
