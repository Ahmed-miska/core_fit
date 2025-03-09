import 'package:core_fit/core/widgets/custom_shimmer.dart';
import 'package:core_fit/features/market/market_store/logic/cubits/category/category_cubit.dart';
import 'package:core_fit/features/market/products/logic/products/products_cubit.dart';
import 'package:core_fit/features/market/store_details/data/types_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        return state.maybeWhen(
          subCategoriesLoading: () {
            return CustomShimmer(
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(),
                  );
                },
              ),
            );
          },
          subCategoriesSuccess: (categoriesResponseModel) {
            return categoriesResponseModel.subCategories!.isEmpty
                ? const Center(child: Text('No Sub Categories'))
                : ListView.builder(
                    itemCount: categoriesResponseModel.subCategories!.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: InkWell(
                          onTap: () {
                            context.read<ProductsCubit>().categoryId = categoriesResponseModel.subCategories![index].id ?? 0;                          
                            context.read<ProductsCubit>().reset();
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: TypesItemInStoreDetails(
                            name: categoriesResponseModel.subCategories![index].name ?? '',
                            isSelected: index == selectedIndex,
                          ),
                        ),
                      );
                    },
                  );
          },
          subCategoriesError: (error) {
            return Center(child: Text(error));
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
