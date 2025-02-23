part of 'category_cubit.dart';

@freezed
class CategoryState<T> with _$CategoryState<T> {
  const factory CategoryState.initial() = _Initial;

  const factory CategoryState.categoriesLoading() = CategoriesLoading;
  const factory CategoryState.categoriesSuccess(CategoriesResponseModel categoriesResponseModel) = CategoriesSuccess<T>;
  const factory CategoryState.categoriesError({required String error}) = CategoriesError;

  const factory CategoryState.subCategoriesLoading() = SubCategoriesLoading;
  const factory CategoryState.subCategoriesSuccess(SubCategoriesResponseModel subCategoriesResponseModel) = SubCategoriesSuccess<T>;
  const factory CategoryState.subCategoriesError({required String error}) = SubCategoriesError;
}
