import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/custom_cached_image.dart';
import 'package:core_fit/features/reservation/my_reservation/data/models/reservations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyReservationDetailsItem extends StatelessWidget {
  final ReservationModel reservationModel;
  const MyReservationDetailsItem({
    super.key,
    required this.reservationModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.main.withOpacity(.1),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 80.h,
            width: 80.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CustomCachedImage(imageUrl: reservationModel.playgroundImages!.first, fit: BoxFit.fill),
            ),
          ),
          horizontalSpace(12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(reservationModel.playgroundName ?? "", style: TextStyles.font16Dark700),
                verticalSpace(10),
                RatingStars(value: reservationModel.playgroundAvgRate!.toDouble(), starSize: 16, valueLabelVisibility: false),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.main,
              boxShadow: const [
                BoxShadow(
                  color: AppColors.lightGrey,
                  blurRadius: 4,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Text('${reservationModel.teamMembers} X ${reservationModel.teamMembers}', style: TextStyles.font14White400),
          )
        ],
      ),
    );
  }
}
