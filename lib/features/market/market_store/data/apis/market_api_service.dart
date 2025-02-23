import 'package:core_fit/core/networking/api_constants.dart';
import 'package:core_fit/features/market/market_store/data/models/markets_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../models/market_details_response_model.dart';

part 'market_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class MarketApiService {
  factory MarketApiService(Dio dio) => _MarketApiService(dio);

 
  @GET('markets')
  Future<MarketsResponseModel> getMarkets(
    @Query('page') int page,
    @Query('size') int? size,
    @Query('name') String? name,
    @Query('categoryId') String? categoryId,
  );

  @GET('find_market')
  Future<MarketDetailsResponseModel> findMarket(
    @Query('id') int id,
  );
}