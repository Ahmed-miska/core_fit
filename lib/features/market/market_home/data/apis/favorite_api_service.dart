import 'package:core_fit/core/networking/api_constants.dart';
import 'package:core_fit/core/networking/message_response_model.dart';
import 'package:core_fit/features/market/market_home/data/models/favorite_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'favorite_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class FavoriteApiService {
  factory FavoriteApiService(Dio dio) => _FavoriteApiService(dio);

  @GET('favourites')
  Future<FavoritesResponseModel> getFavourites();

  @POST('toggle_favourites')
  Future<MessageResponseModel> toggleFavourites(@Body() Map<String, dynamic> body);
}
