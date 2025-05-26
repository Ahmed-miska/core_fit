import 'package:core_fit/core/networking/api_error_handler.dart';
import 'package:core_fit/core/networking/api_result.dart';
import 'package:core_fit/core/networking/message_response_model.dart';
import 'package:core_fit/features/market/market_orders/data/apis/orders_api_services.dart';
import 'package:core_fit/features/market/market_orders/data/models/add_order_request_model.dart';
import 'package:core_fit/features/market/market_orders/data/models/order_details_response_model.dart';
import 'package:core_fit/features/market/market_orders/data/models/orders_response_model.dart';

class OrdersRepo {
  final OrdersApiServices _ordersApiServices;

  OrdersRepo(this._ordersApiServices);

  Future<ApiResult<MessageResponseModel>> addOrder(AddOrderRequestModel body) async {
    try {
      final response = await _ordersApiServices.addOrder(body);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<OrdersResponseModel>> getOrders(String status) async {
    try {
      final response = await _ordersApiServices.getOrders(status);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<OrderDetailsResponseModel>> getOrderDetails(int id) async {
    try {
      final response = await _ordersApiServices.getOrderDetails(id);

      return ApiResult.success(response);
    } catch (e) {
      print(e);
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
