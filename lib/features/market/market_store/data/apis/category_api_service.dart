import 'package:core_fit/core/networking/api_constants.dart';
import 'package:core_fit/features/market/market_store/data/models/categories_response_model.dart';
import 'package:core_fit/features/market/market_store/data/models/sub_categories_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'category_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class CategoryApiService {
  factory CategoryApiService(Dio dio) => _CategoryApiService(dio);

  @GET('categories')
  Future<CategoriesResponseModel> getCategories();

  @GET('sub_categories')
  Future<SubCategoriesResponseModel> getSubCategories(
    @Query('marketId') int categoryId,
  );
}
