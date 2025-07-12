import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/custom_cached_image.dart';
import 'package:core_fit/features/reservation/my_reservation/data/models/reservations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyReservationListItem extends StatelessWidget {
  final ReservationModel reservationModel;
  const MyReservationListItem({super.key, required this.reservationModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.white,
        border: Border.all(color: AppColors.lightGrey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: 220.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CustomCachedImage(
                imageUrl: reservationModel.playgroundImages!.first,
                fit: BoxFit.fill,
              ),
            ),
          ),
          verticalSpace(8),
          Row(
            children: [
              Text(reservationModel.playgroundName ?? "", style: TextStyles.font16Dark700),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.main,
                ),
                child: Text('${reservationModel.teamMembers} X ${reservationModel.teamMembers}', style: TextStyles.font12White600),
              ),
            ],
          ),
          verticalSpace(8),
          Text(reservationModel.playgroundAddress ?? '', style: TextStyles.font14Dark400),
          verticalSpace(8),
          Row(
            children: [
              Text(reservationModel.date ?? '', style: TextStyles.font14Dark400),
              const Spacer(),
              Text(' EG ${reservationModel.price}', style: TextStyles.font18Main600),
            ],
          ),
          verticalSpace(8),
        ],
      ),
    );
  }
}
