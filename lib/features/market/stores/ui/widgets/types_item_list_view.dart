import 'package:core_fit/core/helpers/test_lists.dart';
import 'package:core_fit/features/market/stores/ui/widgets/types_item_in_stores.dart';
import 'package:flutter/material.dart';

class TypesItemsListView extends StatefulWidget {
  const TypesItemsListView({
    super.key,
  });

  @override
  State<TypesItemsListView> createState() => _TypesItemsListViewState();
}

class _TypesItemsListViewState extends State<TypesItemsListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: testItemTypes.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: TypesItemInStores(
              model: testItemTypes[index],
              isSelected: selectedIndex == index,
            ),
          ),
        );
      },
    );
  }
}
