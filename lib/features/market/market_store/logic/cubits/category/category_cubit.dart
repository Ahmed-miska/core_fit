import 'package:core_fit/features/market/market_store/data/models/categories_response_model.dart';
import 'package:core_fit/features/market/market_store/data/models/sub_categories_response_model.dart';
import 'package:core_fit/features/market/market_store/data/repo/category_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_state.dart';
part 'category_cubit.freezed.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final CategoryRepo _marketStoreRepo;
  CategoryCubit(this._marketStoreRepo) : super(CategoryState.initial());

  Future<void> getCategories() async {
    emit(CategoryState.categoriesLoading());
    final result = await _marketStoreRepo.getCategories();
    result.when(
      success: (response) {
        response.data!.categories!.insert(0, Category(id: 0, name: 'All'));
        emit(CategoryState.categoriesSuccess(response));
      },
      failure: (error) {
        emit(CategoryState.categoriesError(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> getSubCategories(int id) async {
    emit(CategoryState.subCategoriesLoading());
    final result = await _marketStoreRepo.getSubCategories(id);
    result.when(
      success: (response) {
        response.subCategories!.insert(0, SubCategory(id: 0, name: 'All'));
        emit(CategoryState.subCategoriesSuccess(response));
      },
      failure: (error) {
        emit(CategoryState.subCategoriesError(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
