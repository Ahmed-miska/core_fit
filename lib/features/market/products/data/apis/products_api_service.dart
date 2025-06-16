import 'package:core_fit/core/networking/api_constants.dart';
import 'package:core_fit/features/market/products/data/models/product_by_id_response_model.dart';
import 'package:core_fit/features/market/products/data/models/products_response_model.dart';
import 'package:core_fit/features/market/products/data/models/reviews_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'products_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ProductsApiService {
  factory ProductsApiService(Dio dio) => _ProductsApiService(dio);

  @GET('products')
  Future<ProductsResponseModel> getProducts(
    @Query('page') int page,
    @Query('size') int size,
    @Query('subCategoryId') int? subCategoryId,
    @Query('marketId') int? marketId,
    @Query('search') String? name,
  );

  @GET('products/find_by_id')
  Future<ProductByIdResponseModel> findProductById(
    @Query('id') int id,
  );

  @GET('rates/find_by_market')
  Future<ReviewsResponseModel> findRateByMarket(
    @Query('marketId') int marketId,
    @Query('size') int size,
  );
}
