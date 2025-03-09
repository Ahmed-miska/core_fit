import 'package:core_fit/core/networking/api_error_handler.dart';
import 'package:core_fit/core/networking/api_result.dart';
import 'package:core_fit/core/networking/message_response_model.dart';
import 'package:core_fit/features/market/market_home/data/apis/favorite_api_service.dart';
import 'package:core_fit/features/market/market_home/data/models/favorite_response_model.dart';

class FavoriteRepo {
  final FavoriteApiService _favoriteApiService;

  FavoriteRepo(this._favoriteApiService);

  Future<ApiResult<FavoritesResponseModel>> getFavourites() async {
    try {
      final response = await _favoriteApiService.getFavourites();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<MessageResponseModel>> toggleFavourites(int id, String type) async {
    try {
      final response = await _favoriteApiService.toggleFavourites(
        {
          'productId': id,
          'type': type,
        },
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
