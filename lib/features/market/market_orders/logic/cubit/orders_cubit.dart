import 'package:core_fit/features/market/market_orders/data/models/add_order_request_model.dart';
import 'package:core_fit/features/market/market_orders/data/models/order_details_response_model.dart';
import 'package:core_fit/features/market/market_orders/data/models/orders_response_model.dart';
import 'package:core_fit/features/market/market_orders/data/repo/orders_repo.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_state.dart';
part 'orders_cubit.freezed.dart';

class OrdersCubit extends Cubit<OrdersState> {
  OrdersCubit(this.ordersRepo) : super(OrdersState.initial());
  final OrdersRepo ordersRepo;

  final TextEditingController clientName = TextEditingController();
  final TextEditingController clientPhone = TextEditingController();
  final TextEditingController clientAddress = TextEditingController();
  final TextEditingController additionalInfo = TextEditingController();
  final TextEditingController paymentMethodController = TextEditingController(text: 'CASH_ON_DELIVERY');

  String latitude = '30.000000';
  String longitude = '30.000000';

  final formKey = GlobalKey<FormState>();

  List<OrderModel> orders = [];

  Future<void> getOrders(String status) async {
    emit(OrdersState.getOrdersLoading());
    final result = await ordersRepo.getOrders(status);
    result.when(
      success: (response) {
        orders = response.data;
        emit(OrdersState.getOrdersSuccess(orders));
      },
      failure: (failure) {
        emit(OrdersState.getOrdersFailure(error: failure.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> addOrder() async {
    emit(OrdersState.addOrderLoading());
    final result = await ordersRepo.addOrder(
      AddOrderRequestModel(
        clientName: clientName.text,
        clientPhone: clientPhone.text,
        latitude: latitude,
        longitude: longitude,
        additionalInfo: additionalInfo.text,
        paymentMethod: paymentMethodController.text,
        clientAddress: clientAddress.text,
      ),
    );
    result.when(
      success: (success) {
        clear();
        emit(OrdersState.addOrderSuccess());
      },
      failure: (failure) {
        emit(OrdersState.addOrderFailure(error: failure.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> getOrderDetails(int id) async {
    emit(OrdersState.getOrderDetailsLoading());
    final result = await ordersRepo.getOrderDetails(id);
    result.when(
      success: (response) {
       
        emit(OrdersState.getOrderDetailsSuccess(response.data!));
      },
      failure: (failure) {
        print(failure);
        emit(OrdersState.getOrderDetailsFailure(error: failure.apiErrorModel.message ?? ''));
      },
    );
  }

  void clear() {
    clientName.clear();
    clientPhone.clear();
    clientAddress.clear();
    additionalInfo.clear();
    paymentMethodController.text = 'CASH_ON_DELIVERY';
  }

  void chosePaymentMethod(int method) {
    if (method == 0) {
      paymentMethodController.text = 'CASH_ON_DELIVERY';
    } else {
      paymentMethodController.text = 'WALLET';
    }
    emit(OrdersState.initial());
  }
}
