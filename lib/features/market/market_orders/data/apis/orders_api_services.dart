import 'package:core_fit/core/networking/api_constants.dart';
import 'package:core_fit/core/networking/message_response_model.dart';
import 'package:core_fit/features/market/market_orders/data/models/add_order_request_model.dart';
import 'package:core_fit/features/market/market_orders/data/models/order_details_response_model.dart';
import 'package:core_fit/features/market/market_orders/data/models/orders_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'orders_api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class OrdersApiServices {
  factory OrdersApiServices(Dio dio, {String baseUrl}) = _OrdersApiServices;

  @POST('create_order')
  Future<MessageResponseModel> addOrder(@Body() AddOrderRequestModel body);

  @GET('orders')
  Future<OrdersResponseModel> getOrders(@Query('status') String status);

  @GET('order')
  Future<OrderDetailsResponseModel> getOrderDetails(@Query('orderId') int id);
}
