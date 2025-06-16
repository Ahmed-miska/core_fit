part of 'products_cubit.dart';

@freezed
class ProductsState<T> with _$ProductsState<T> {
  const factory ProductsState.initial() = _Initial;
  const factory ProductsState.productsLoading() = ProductsLoading;
  const factory ProductsState.productsSuccess(List<Product> products) =ProductsSuccess<T>;
  const factory ProductsState.productsError({required String error}) = ProductsError;


  const factory ProductsState.productByIdLoading() = ProductByIdLoading;
  const factory ProductsState.productByIdSuccess(ProductData product) = ProductByIdSuccess<T>;
  const factory ProductsState.productByIdError({required String error}) = ProductByIdError;

  const factory ProductsState.reviewsLoading() = ReviewsLoading;
  const factory ProductsState.reviewsSuccess(List<ReviewModel>? rates) = ReviewsSuccess<T>;
  const factory ProductsState.reviewsError({required String error}) = ReviewsError;
}
