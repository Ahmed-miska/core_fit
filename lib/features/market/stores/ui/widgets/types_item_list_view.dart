import 'package:core_fit/core/widgets/custom_shimmer.dart';
import 'package:core_fit/features/market/market_store/logic/cubits/category/category_cubit.dart';
import 'package:core_fit/features/market/stores/ui/widgets/types_item_in_stores.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../market_store/data/models/categories_response_model.dart';

class TypesItemsListView extends StatefulWidget {
  final Function(int) onCategorySelected;
  const TypesItemsListView({
    super.key, required this.onCategorySelected, 
  });
  @override
  State<TypesItemsListView> createState() => _TypesItemsListViewState();
}

class _TypesItemsListViewState extends State<TypesItemsListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        return state.maybeWhen(
          categoriesLoading: () {
            return CustomShimmer(
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TypesItemInStores(
                      model: Category(),
                      isSelected: selectedIndex == index,
                    ),
                  );
                },
              ),
            );
          },
          categoriesSuccess: (categoriesResponseModel) {
            return ListView.builder(
              itemCount: categoriesResponseModel.data!.categories!.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: InkWell(
                    onTap: () {
                     widget.onCategorySelected(categoriesResponseModel.data!.categories![index].id!);
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: TypesItemInStores(
                      model: categoriesResponseModel.data!.categories![index],
                      isSelected: selectedIndex == index,
                    ),
                  ),
                );
              },
            );
          },
          categoriesError: (error) {
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
