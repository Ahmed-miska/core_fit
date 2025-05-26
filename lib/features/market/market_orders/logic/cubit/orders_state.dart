part of 'orders_cubit.dart';

@freezed
class OrdersState<T> with _$OrdersState<T> {
  const factory OrdersState.initial() = _Initial;

  const factory OrdersState.addOrderLoading() = AddOrderLoading;

  const factory OrdersState.addOrderSuccess() = AddOrderSuccess;

  const factory OrdersState.addOrderFailure({required String error}) = AddOrderFailure;

  const factory OrdersState.getOrdersLoading() = GetOrdersLoading;

  const factory OrdersState.getOrdersSuccess(List<OrderModel> orders) = GetOrdersSuccess;

  const factory OrdersState.getOrdersFailure({required String error}) = GetOrdersFailure;

  const factory OrdersState.getOrderDetailsLoading() = GetOrderDetailsLoading;

  const factory OrdersState.getOrderDetailsSuccess(OrderDetailsItem order) = GetOrderDetailsSuccess;

  const factory OrdersState.getOrderDetailsFailure({required String error}) = GetOrderDetailsFailure;
}
