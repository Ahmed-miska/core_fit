import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/widgets/custom_refresh_indicator.dart';
import 'package:core_fit/core/widgets/custom_shimmer.dart';
import 'package:core_fit/features/market/market_store/data/models/markets_response_model.dart';
import 'package:core_fit/features/market/market_store/logic/cubits/market/market_cubit.dart';
import 'package:core_fit/features/market/market_store/ui/widgets/verified_stores_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoresListView extends StatefulWidget {
  const StoresListView({
    super.key,
  });

  @override
  State<StoresListView> createState() => _StoresListViewState();
}

class _StoresListViewState extends State<StoresListView> {
  ScrollController scrollController = ScrollController();
  @override
  void initState() {
    scrollController.addListener(onScroll);
    super.initState();
  }

  onScroll() {
    if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
      if (!context.read<MarketCubit>().hasReachMax) {
        context.read<MarketCubit>().getMarkets();
      }
    }
  }

  @override
  void dispose() {
    scrollController.removeListener(onScroll);
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MarketCubit, MarketState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return CustomShimmer(
              child: Wrap(
                direction: Axis.horizontal,
                crossAxisAlignment: WrapCrossAlignment.center,
                runSpacing: 10.h,
                spacing: 10.w,
                children: List.generate(
                  10,
                  (index) => Container(
                    color: AppColors.mainBG,
                    width: 110.w,
                    height: 150.h,
                    child: VerfiedStoresItem(
                      model: Market(
                        id: 0,
                        name: '',
                        imageUrl: '',
                        opened: false,
                        address: '',
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
          success: (markets) {
            return markets.isEmpty
                ? const Align(alignment: Alignment.center, child: Text('No Stores'))
                : CustomRefreshIndicator(
                    onRefresh: () {
                      context.read<MarketCubit>().reset();
                    },
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      controller: scrollController,
                      itemCount: context.read<MarketCubit>().hasReachMax ? markets.length : markets.length + 1,
                      itemBuilder: (context, index) {
                        return index == markets.length
                            ? Center(
                                child: CircularProgressIndicator(
                                color: AppColors.main,
                              ))
                            : Container(
                                color: AppColors.mainBG,
                                width: 110.w,
                                height: 150.h,
                                child: VerfiedStoresItem(
                                  model: markets[index],
                                ),
                              );
                      },
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: .6,
                        mainAxisSpacing: 10.h,
                        crossAxisSpacing: 10.w,
                      ),
                    ),
                  );
          },
          error: (error) {
            return Center(
              child: Text(error),
            );
          },
          orElse: () {
            return SizedBox.shrink();
          },
        );
      },
    );
  }
}
