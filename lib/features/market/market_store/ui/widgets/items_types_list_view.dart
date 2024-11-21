import 'package:core_fit/core/helpers/test_lists.dart';
import 'package:core_fit/features/market/market_store/ui/widgets/items_types.dart';
import 'package:flutter/material.dart';

class ItemsTypesListView extends StatelessWidget {
  const ItemsTypesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: testItemTypes.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return ItemsTypesContainer(model: testItemTypes[index]);
      },
    );
  }
}
