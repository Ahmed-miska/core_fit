import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_button.dart';
import 'package:core_fit/features/reservation/staduims/logic/play_grounds_cubit/playgrounds_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchForStaduimBar extends StatefulWidget {
  final PlaygroundsCubit cuibt;
  const SearchForStaduimBar({
    super.key,
    required this.cuibt,
  });

  @override
  State<SearchForStaduimBar> createState() => _SearchForStaduimBarState();
}

class _SearchForStaduimBarState extends State<SearchForStaduimBar> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlaygroundsCubit, PlaygroundsState>(
      bloc: widget.cuibt,
      builder: (context, state) {
        return Row(
          children: [
            InkWell(
              onTap: () {
                openFilterBottomSheet();
              },
              child: Container(
                padding: const EdgeInsets.all(12),
                height: 46.h,
                width: 46.w,
                decoration: BoxDecoration(
                  color: AppColors.main,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SvgPicture.asset(
                  'assets/icons/filter.svg',
                  color: AppColors.white,
                ),
              ),
            ),
            horizontalSpace(12),
            Expanded(
              child: SearchBar(
                controller: widget.cuibt.searchController,
                leading: widget.cuibt.searchController.text.isEmpty
                    ? null
                    : InkWell(
                        onTap: () {
                          widget.cuibt.searchController.clear();
                          widget.cuibt.page = 1;
                          widget.cuibt.getPlaygrounds();
                        },
                        child: const Icon(Icons.close, color: AppColors.red, size: 24),
                      ),
                padding: WidgetStateProperty.all(const EdgeInsets.only(left: 8)),
                elevation: const WidgetStatePropertyAll(0),
                backgroundColor: WidgetStateProperty.all(AppColors.lightGrey),
                hintText: 'Search for Staduim',
                hintStyle: WidgetStateProperty.all(TextStyles.font12Gray400),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                trailing: Iterable.castFrom(
                  [
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: InkWell(
                        onTap: () {
                          widget.cuibt.getPlaygrounds();
                        },
                        child: Icon(Icons.search, color: AppColors.main, size: 32),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void openFilterBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      builder: (context) {
        return BlocProvider.value(
          value: widget.cuibt,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 5.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
                verticalSpace(12),
                Row(
                  children: [
                    Text('Filter ', style: TextStyles.font16Dark700),
                    Spacer(),
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.close, color: AppColors.dark, size: 24)),
                  ],
                ),
                verticalSpace(24),
                InkWell(
                  onTap: () {
                    openRatingBottomSheet();
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                    decoration: BoxDecoration(
                      color: AppColors.lightGrey,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Row(
                      children: [
                        Text('Rating', style: TextStyles.font14Dark400),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.grey,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ),
                verticalSpace(12),
                InkWell(
                  onTap: () async {
                    widget.cuibt.getCities();
                    openCitiesBottomSheet();
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                    decoration: BoxDecoration(
                      color: AppColors.lightGrey,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Row(
                      children: [
                        Text('City', style: TextStyles.font14Dark400),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.grey,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ),
                verticalSpace(24),
                Row(
                  children: [
                    Expanded(
                      child: AppTextButton(
                        text: 'Apply',
                        onTap: () {
                          widget.cuibt.page = 1;
                          widget.cuibt.getPlaygrounds();
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    horizontalSpace(12),
                    Expanded(
                      child: AppTextButton(
                        text: 'Clear',
                        color: AppColors.red,
                        onTap: () {
                          widget.cuibt.resetFilters();
                          widget.cuibt.getPlaygrounds();
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  void openRatingBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      builder: (context) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 5.h,
                width: 70.w,
                decoration: BoxDecoration(
                  color: AppColors.lightGrey,
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              verticalSpace(12),
              Row(
                children: [
                  Text('Rating', style: TextStyles.font16Dark700),
                  Spacer(),
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.close, color: AppColors.dark, size: 24)),
                ],
              ),
              verticalSpace(24),
              ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: Row(
                      children: [
                        RatingStars(value: index + 1, starCount: 5, starSpacing: 2, valueLabelVisibility: false),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            widget.cuibt.avgRate = index + 1;

                            Navigator.pop(context);
                          },
                          child: Icon(
                            index + 1 == widget.cuibt.avgRate ? Icons.check_circle : Icons.check_circle_outline,
                            color: index + 1 == widget.cuibt.avgRate ? AppColors.main : AppColors.dark,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: 5,
              )
            ],
          ),
        );
      },
    );
  }

  void openCitiesBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      builder: (context) {
        return BlocBuilder<PlaygroundsCubit, PlaygroundsState>(
          buildWhen: (previous, current) => current is CitiesLoading || current is CitiesSuccess || current is CitiesError,
          bloc: widget.cuibt,
          builder: (context, state) {
            return state.maybeWhen(
              citiesLoading: () => Center(
                  child: CircularProgressIndicator(
                color: AppColors.main,
              )),
              citiesSuccess: (response) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  width: double.infinity,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      verticalSpace(24),
                      Container(
                        height: 5.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                          color: AppColors.lightGrey,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                      verticalSpace(12),
                      Row(
                        children: [
                          Text('Cities', style: TextStyles.font16Dark700),
                          Spacer(),
                          InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.close, color: AppColors.dark, size: 24)),
                        ],
                      ),
                      verticalSpace(12),
                      Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.h),
                                child: Row(
                                  children: [
                                    Text(
                                      response[index].name ?? '',
                                      style: TextStyles.font14Dark400,
                                    ),
                                    Spacer(),
                                    GestureDetector(
                                      onTap: () {
                                        widget.cuibt.selectedCityId = response[index].id ?? 0;
                                        Navigator.pop(context);
                                      },
                                      child: Icon(
                                        response[index].id == widget.cuibt.selectedCityId ? Icons.check_circle : Icons.check_circle_outline,
                                        color: response[index].id == widget.cuibt.selectedCityId ? AppColors.main : AppColors.dark,
                                        size: 24,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            itemCount: response.length),
                      ),
                      verticalSpace(24),
                      // Add your cities list here
                    ],
                  ),
                );
              },
              citiesError: (error) => Center(
                child: Text(
                  error,
                  style: TextStyles.font18Dark600,
                ),
              ),
              orElse: () => Container(),
            );
          },
        );
      },
    );
  }
}
