import 'package:core_fit/core/widgets/custom_shimmer.dart';
import 'package:core_fit/features/market/market_store/data/models/categories_response_model.dart';
import 'package:core_fit/features/market/market_store/logic/cubits/category/category_cubit.dart';
import 'package:core_fit/features/market/market_store/ui/widgets/items_types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemsTypesListView extends StatelessWidget {
  const ItemsTypesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      buildWhen: (previous, current) => current is CategoriesLoading || current is CategoriesSuccess || current is CategoriesError,
      builder: (context, state) {
        return state.maybeWhen(
          categoriesLoading: () {
            return CustomShimmer(
              child: ListView.builder(
                itemCount: 5, // عدد العناصر التي تريد عرضها أثناء التحميل
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ItemsTypesContainer(model: Category()); // تمرير null أو نموذج فارغ
                },
              ),
            );
          },
          categoriesSuccess: (categoriesResponseModel) {
            var categories = categoriesResponseModel.data?.categories;
            return ListView.builder(
              itemCount: categories!.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ItemsTypesContainer(model: categories[index]);
              },
            );
          },
          categoriesError: (error) {
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
