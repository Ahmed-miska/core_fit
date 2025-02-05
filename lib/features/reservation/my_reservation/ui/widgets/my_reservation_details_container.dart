import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MyReservationDetailsContainer extends StatelessWidget {
  const MyReservationDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.inputStroke,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Single Booking', style: TextStyles.font14Dark400),
                ),
              ),
              const Spacer(),
              const Icon(Icons.cancel_outlined, color: AppColors.red),
              horizontalSpace(4),
              Text('Cancel', style: TextStyles.font14White700.copyWith(color: AppColors.red))
            ],
          ),
          verticalSpace(8),
          Row(
            children: [
              Text('2024/11/29 . 9:49 م', style: TextStyles.font12Dark400),
              const Spacer(),
              Text('#1234', style: TextStyles.font18Main600),
            ],
          ),
          verticalSpace(16),
          Row(
            children: [
              const Icon(Icons.location_on_outlined, color: AppColors.main),
              horizontalSpace(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Location', style: TextStyles.font18Dark700),
                  verticalSpace(4),
                  Text('Span , Madrid', style: TextStyles.font14Dark400),
                ],
              ),
              const Spacer(),
              Text('2.4 km', style: TextStyles.font16Dark700),
            ],
          ),
          verticalSpace(16),
          Row(
            children: [
              SvgPicture.asset(Assets.calendar),
              horizontalSpace(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Date', style: TextStyles.font18Dark700),
                  verticalSpace(4),
                  Text('26/10/2022', style: TextStyles.font14Dark400),
                ],
              ),
            ],
          ),
          verticalSpace(16),
          Row(
            children: [
              const Icon(Icons.access_time, color: AppColors.main),
              horizontalSpace(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Time', style: TextStyles.font18Dark700),
                  verticalSpace(4),
                  Text.rich(
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'From ', style: TextStyles.font14Gray400),
                        TextSpan(text: '10:00 PM', style: TextStyles.font14Dark700),
                        TextSpan(text: '  to  ', style: TextStyles.font14Gray400),
                        TextSpan(text: '11:00 PM', style: TextStyles.font14Dark700),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          verticalSpace(16),
          Row(
            children: [
              const Icon(Icons.more_time, color: AppColors.main),
              horizontalSpace(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Duration', style: TextStyles.font18Dark700),
                  verticalSpace(4),
                  Text('2 hours', style: TextStyles.font14Dark400),
                ],
              ),
            ],
          ),
          verticalSpace(16),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.white,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Reservation', style: TextStyles.font14Dark400),
                        verticalSpace(4),
                        Text('200 EG', style: TextStyles.font16Dark700),
                      ],
                    ),
                    const Spacer(),
                    Text('x 2', style: TextStyles.font14Dark400),
                    const Spacer(),
                    Text('200 EG', style: TextStyles.font16Dark700),
                  ],
                ),
                verticalSpace(12),
                const Divider(thickness: .2),
                verticalSpace(12),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Evening period', style: TextStyles.font14Dark400),
                        verticalSpace(4),
                        Text('10 EG', style: TextStyles.font16Dark700),
                      ],
                    ),
                    const Spacer(),
                    Text('x 2', style: TextStyles.font14Dark400),
                    const Spacer(),
                    Text('20 EG', style: TextStyles.font16Dark700),
                  ],
                ),
                verticalSpace(12),
                const Divider(thickness: .2),
                verticalSpace(12),
                Row(
                  children: [
                    Text('Total', style: TextStyles.font18Dark600),
                    const Spacer(),
                    Text('160 EG', style: TextStyles.font18Main600),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
