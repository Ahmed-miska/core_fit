import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/custom_cached_image.dart';
import 'package:core_fit/core/widgets/custom_shimmer.dart';
import 'package:core_fit/features/market/market_store/logic/cubits/market/market_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoreImageAndTitle extends StatelessWidget {
  const StoreImageAndTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: BlocBuilder<MarketCubit, MarketState>(
        builder: (context, state) {
          return state.maybeWhen(
              loadingMarketDetails: () {
                return CustomShimmer(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 120.h,
                      width: 200.w,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: CustomCachedImage(imageUrl: ''),
                      ),
                    ),
                    verticalSpace(16),
                    Text(
                      '',
                      style: TextStyles.font16Dark700,
                    ),
                    verticalSpace(8),
                    Text(
                      '',
                      style: TextStyles.font12Main600,
                    )
                  ],
                ));
              },
              successMarketDetails: (marketDetails) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Padding(
                          padding: const EdgeInsets.all(22),
                          child: CustomCachedImage(imageUrl: marketDetails.marketData!.market?.imageUrl ?? ''),
                        ),
                      ),
                    ),
                    verticalSpace(16),
                    Text(
                      marketDetails.marketData!.market!.name ?? '',
                      style: TextStyles.font16Dark700,
                    ),
                    verticalSpace(8),
                    Text(
                      marketDetails.marketData!.market?.category?.name ?? '',
                      style: TextStyles.font12Main600,
                    ),
                  ],
                );
              },
              errorMarketDetails: (error) => Center(child: Text(error)),
              orElse: () => SizedBox.shrink());
        },
      ),
    );
  }
}
