part of 'cart_cubit.dart';

@freezed
class CartState<T> with _$CartState<T> {
  const factory CartState.initial() = _Initial;
  const factory CartState.loading() = Loading;
  const factory CartState.success(CartResponseModel data) = Success<T>;
  const factory CartState.error({required String error}) = Error;


  const factory CartState.addLoading() = AddLoading;
  const factory CartState.addSuccess(CartResponseModel data) = AddSuccess<T>;
  const factory CartState.addError({required String error}) = AddError;


  const factory CartState.deleteLoading() = DeleteLoading;
  const factory CartState.deleteSuccess(CartResponseModel data) = DeleteSuccess<T>;
  const factory CartState.deleteError({required String error}) = DeleteError;

}
