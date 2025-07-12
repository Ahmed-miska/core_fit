import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/add_favorite_icon.dart';
import 'package:core_fit/core/widgets/custom_cached_image.dart';
import 'package:core_fit/features/reservation/staduims/data/models/playgrounds_response_model.dart';
import 'package:core_fit/features/reservation/staduims/logic/play_grounds_cubit/playgrounds_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StaduimItemInStaduimsScreen extends StatelessWidget {
  final PlaygroundModel playground;
  const StaduimItemInStaduimsScreen({
    super.key,
    required this.playground,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
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
      child: Row(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 100.h,
                width: 100.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: CustomCachedImage(
                    imageUrl: playground.images!.isEmpty ? '' : playground.images!.first,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              AddFavoriteIcon(
                isFavorite: playground.favourite!,
                onTap: () {
                  getIt<PlaygroundsCubit>().toggleFavourite(playground.id!, playground.favourite!);
                },
              ),
            ],
          ),
          horizontalSpace(12),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        playground.name ?? '',
                        style: TextStyles.font16Dark700,
                        textAlign: TextAlign.start,
                      ),
                    ),
                    playground.teemMembers == null
                        ? const SizedBox()
                        : Container(
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
                            child: Text('${playground.teemMembers} X ${playground.teemMembers}', style: TextStyles.font12White400),
                          )
                  ],
                ),
                verticalSpace(10),
                RatingStars(value: (playground.avgRate ?? 0).toDouble(), starCount: 5, starSize: 16, valueLabelVisibility: false),
                verticalSpace(10),
                Row(
                  children: [
                    const Icon(Icons.location_on_outlined, color: AppColors.main, size: 16),
                    horizontalSpace(4),
                    Expanded(child: Text(playground.address ?? '', style: TextStyles.font14Dark400)),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
