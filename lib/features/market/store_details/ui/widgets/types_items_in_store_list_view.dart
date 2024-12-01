import 'package:core_fit/core/helpers/test_lists.dart';
import 'package:core_fit/features/market/store_details/data/types_item.dart';
import 'package:flutter/material.dart';

class TypesItemsInStoreListView extends StatefulWidget {
  const TypesItemsInStoreListView({
    super.key,
  });

  @override
  State<TypesItemsInStoreListView> createState() => _TypesItemsInStoreListViewState();
}

class _TypesItemsInStoreListViewState extends State<TypesItemsInStoreListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: typesItems.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 20),
          child: InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: TypesItemInStoreDetails(
              name: typesItems[index],
              isSelected: index == selectedIndex,
            ),
          ),
        );
      },
    );
  }
}
