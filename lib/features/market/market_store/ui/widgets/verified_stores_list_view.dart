import 'package:core_fit/core/helpers/test_lists.dart';
import 'package:core_fit/features/market/market_store/ui/widgets/verified_stores_item.dart';
import 'package:flutter/material.dart';

class VerifiedStoresListView extends StatelessWidget {
  const VerifiedStoresListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: testMarket.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: VerfiedStoresItem(
            model: testMarket[index],
          ),
        );
      },
    );
  }
}
