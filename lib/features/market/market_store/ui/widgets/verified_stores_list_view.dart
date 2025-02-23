import 'package:core_fit/core/widgets/custom_shimmer.dart';
import 'package:core_fit/features/market/market_store/logic/cubits/market/market_cubit.dart';
import 'package:core_fit/features/market/market_store/ui/widgets/verified_stores_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/markets_response_model.dart';

class VerifiedStoresListView extends StatelessWidget {
  const VerifiedStoresListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MarketCubit, MarketState>(
      buildWhen: (previous, current) => current is Loading || current is Success || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return CustomShimmer(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return VerfiedStoresItem(
                    model: Market(id: index, name: '', imageUrl: '', opened: false, address: ''),
                  );
                },
              ),
            );
          },
          success: (markets) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:markets.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: index == 0 ? 16 : 0, right: 16),
                  child: VerfiedStoresItem(
                    model: markets[index],
                  ),
                );
              },
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
