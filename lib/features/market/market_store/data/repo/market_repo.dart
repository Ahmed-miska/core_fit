import 'package:core_fit/core/networking/api_error_handler.dart';
import 'package:core_fit/core/networking/api_result.dart';
import 'package:core_fit/features/market/market_store/data/apis/market_api_service.dart';
import 'package:core_fit/features/market/market_store/data/models/market_details_response_model.dart';
import 'package:core_fit/features/market/market_store/data/models/markets_response_model.dart';

class MarketRepo {
  final MarketApiService _marketApiService;
  MarketRepo(this._marketApiService);

  Future<ApiResult<MarketsResponseModel>> getMarkets({
    required int page,
    String? name,
    String? categoryId,
  }) async {
    try {
      final response = await _marketApiService.getMarkets(page, 15, name, categoryId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<MarketDetailsResponseModel>> findMarket(int id) async {
    try {
      final response = await _marketApiService.findMarket(id);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
