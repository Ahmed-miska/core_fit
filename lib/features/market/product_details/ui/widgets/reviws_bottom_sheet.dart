import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/features/market/products/logic/products/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewsBottomSheet extends StatefulWidget {
  final int marketId;
  final double avarageRate;
  final BuildContext cc;

  const ReviewsBottomSheet({super.key, required this.marketId, required this.cc, required this.avarageRate});

  @override
  State<ReviewsBottomSheet> createState() => _ReviewsBottomSheetState();
}

class _ReviewsBottomSheetState extends State<ReviewsBottomSheet> {
  @override
  void initState() {
    final productsCubit = widget.cc.read<ProductsCubit>();
    productsCubit.getReviews(widget.marketId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      buildWhen: (previous, current) => current is ReviewsLoading || current is ReviewsSuccess || current is ReviewsError,
      bloc: widget.cc.read<ProductsCubit>(),
      builder: (context, state) {
        return state.maybeWhen(
          reviewsLoading: () => const Center(
              child: CircularProgressIndicator(
            color: AppColors.main,
          )),
          reviewsSuccess: (reviews) {
            return reviews!.isEmpty
                ? const Center(child: Text('No reviews'))
                : Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 12.h,
                          ),
                          Center(
                            child: Container(
                              height: 10.h,
                              width: 60.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: AppColors.grey.withValues(alpha: .2),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.h),
                          Row(
                            children: [
                              Text(
                                'Reviews',
                                style: TextStyles.font14Main700,
                              ),
                              Spacer(),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r), color: AppColors.main.withValues(alpha: .2)),
                                child: Row(
                                  children: [
                                    RatingStars(value: widget.avarageRate, starCount: 5, starSpacing: 2, valueLabelVisibility: false),
                                    horizontalSpace(8),
                                    Text('[ ${reviews.length} reviews ]', style: TextStyles.font12Gray400),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 8.h),
                          ListView.separated(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r), color: AppColors.inputStroke),
                                  child: ListTile(
                                    contentPadding: EdgeInsets.zero,
                                    title: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(reviews[index].username ?? '', style: TextStyles.font16Dark700),
                                            SizedBox(height: 4.h),
                                            Text(reviews[index].createdAt?.substring(0, 10) ?? '', style: TextStyles.font12Gray400), // Replace with actual date
                                          ],
                                        ),
                                        RatingStars(value: reviews[index].rate ?? 0, starCount: 5, starSpacing: 2, valueLabelVisibility: false),
                                      ],
                                    ), // Replace with actual user name
                                    subtitle: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 4.h),
                                        Text(reviews[index].comment ?? '', style: TextStyles.font14Dark400), // Replace with actual review text
                                      ],
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return Divider(color: AppColors.inputHint, height: 1.h);
                              },
                              itemCount: reviews.length),
                          // Add your reviews list here
                        ],
                      ),
                    ),
                  );
          },
          orElse: () {
            return const Center(child: CircularProgressIndicator());
          },
        );
      },
    );
  }
}
