import 'package:core_fit/core/networking/api_error_handler.dart';
import 'package:core_fit/core/networking/api_result.dart';
import 'package:core_fit/features/market/products/data/apis/products_api_service.dart';
import 'package:core_fit/features/market/products/data/models/product_by_id_response_model.dart';
import 'package:core_fit/features/market/products/data/models/products_response_model.dart';

class ProductsRepo {
  final ProductsApiService _productsApiService;

  ProductsRepo(this._productsApiService);

  Future<ApiResult<ProductsResponseModel>> getProducts({
    required int page,
    int? subCategoryId,
    int? marketId,
    String? name,
  }) async {
    try {
      final response = await _productsApiService.getProducts(page, 15, subCategoryId, marketId, name);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<ProductByIdResponseModel>> findProductById(int id) async {
    try {
      final response = await _productsApiService.findProductById(id);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
