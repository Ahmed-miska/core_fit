import 'package:core_fit/core/networking/api_constants.dart';
import 'package:core_fit/features/market/cart/data/models/cart_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'cart_api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class CartApiServices {
  factory CartApiServices(Dio dio) => _CartApiServices(dio);

  @GET('cart')
  Future<CartResponseModel> getCart();

  @POST('add_cart_item')
  Future<CartResponseModel> addCartItem(@Body() Map<String, dynamic> body);

  @DELETE('delete_cart')
  Future<CartResponseModel> deleteCartItem();
}
