import 'package:core_fit/core/networking/api_error_handler.dart';
import 'package:core_fit/core/networking/api_result.dart';
import 'package:core_fit/features/auth/sign_up/data/models/cities_response_model.dart';
import 'package:core_fit/features/reservation/staduims/data/apis/playgrounds_api_service.dart';
import 'package:core_fit/features/reservation/staduims/data/models/playgrounds_response_model.dart';
import 'package:core_fit/features/reservation/staduims/data/models/reservation_slots_response_model.dart';
import 'package:core_fit/features/reservation/staduims/data/models/reserve_request_model.dart';
import 'package:core_fit/features/reservation/staduims/data/models/reserve_respnse_model.dart';
import 'package:core_fit/features/reservation/staduims/data/models/toggle_payground_favorite.dart';

class PlaygroundsRepo {
  final PlaygroundsApiService _playgroundsApiService;
  PlaygroundsRepo(this._playgroundsApiService);

  Future<ApiResult<PlaygroundsResponseModel>> getPlaygrounds({required int page, String? search, int? avgRate, int? cityId}) async {
    try {
      final response = await _playgroundsApiService.getPlaygrounds(
          page,
          500, // Assuming a default page size of 10
          search,
          avgRate,
          cityId == 0 ? null : cityId);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<CitiesResponseModel>> getCities() async {
    try {
      final response = await _playgroundsApiService.getCities();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<ReservationSlotsResponseModel>> getReservationSlots({required int playgroundId, required String day}) async {
    try {
      final response = await _playgroundsApiService.getReservationSlots(playgroundId, day);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<ReserveResponseModel>> bookReservation(ReserveRequestModel model) async {
    try {
      final response = await _playgroundsApiService.bookReservation(model);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<void>> addToFavourites(int playgroundId, bool isAdding) async {
    try {
      final response = await _playgroundsApiService.addToFavourites(TogglePaygroundFavorite(
        playgroundId: playgroundId,
        type: isAdding ? 'remove' : 'add',
      ));
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
