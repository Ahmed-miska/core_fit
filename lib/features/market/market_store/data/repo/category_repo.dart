import 'package:core_fit/core/networking/api_error_handler.dart';
import 'package:core_fit/core/networking/api_result.dart';
import 'package:core_fit/features/market/market_store/data/apis/category_api_service.dart';
import 'package:core_fit/features/market/market_store/data/models/categories_response_model.dart';
import 'package:core_fit/features/market/market_store/data/models/sub_categories_response_model.dart';

class CategoryRepo {
  final CategoryApiService _marketStoreApiService;
  CategoryRepo(this._marketStoreApiService);

  Future<ApiResult<CategoriesResponseModel>> getCategories() async {
    try {
      final response = await _marketStoreApiService.getCategories();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<SubCategoriesResponseModel>> getSubCategories(int id) async {
    try {
      final response = await _marketStoreApiService.getSubCategories(id);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
