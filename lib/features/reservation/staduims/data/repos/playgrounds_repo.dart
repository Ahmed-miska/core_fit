import 'package:core_fit/core/networking/api_error_handler.dart';
import 'package:core_fit/core/networking/api_result.dart';
import 'package:core_fit/features/auth/sign_up/data/models/cities_response_model.dart';
import 'package:core_fit/features/reservation/staduims/data/apis/playgrounds_api_service.dart';
import 'package:core_fit/features/reservation/staduims/data/models/playgrounds_response_model.dart';

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
}
