import 'package:core_fit/core/networking/api_error_handler.dart';
import 'package:core_fit/core/networking/api_result.dart';
import 'package:core_fit/features/market/cart/data/apis/cart_api_services.dart';
import 'package:core_fit/features/market/cart/data/models/cart_response_model.dart';

class CartRepo {
  final CartApiServices _cartApiServices;

  CartRepo(this._cartApiServices);

  Future<ApiResult<CartResponseModel>> getCart() async {
    try {
      final response = await _cartApiServices.getCart();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<CartResponseModel>> addCartItem(int productId, int quantity) async {
    try {
      final response = await _cartApiServices.addCartItem({"productId": productId, "quantity": quantity});
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<CartResponseModel>> deleteCartItem() async {
    try {
      final response = await _cartApiServices.deleteCartItem();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
