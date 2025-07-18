import 'package:core_fit/core/networking/api_constants.dart';
import 'package:core_fit/features/auth/sign_up/data/apis/sign_up_api_constants.dart';
import 'package:core_fit/features/auth/sign_up/data/models/cities_response_model.dart';
import 'package:core_fit/features/reservation/staduims/data/models/playgrounds_response_model.dart';
import 'package:core_fit/features/reservation/staduims/data/models/reservation_slots_response_model.dart';
import 'package:core_fit/features/reservation/staduims/data/models/reserve_request_model.dart';
import 'package:core_fit/features/reservation/staduims/data/models/reserve_respnse_model.dart';
import 'package:core_fit/features/reservation/staduims/data/models/toggle_payground_favorite.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'playgrounds_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class PlaygroundsApiService {
  factory PlaygroundsApiService(Dio dio, {String baseUrl}) = _PlaygroundsApiService;
  @GET('playgrounds')
  Future<PlaygroundsResponseModel> getPlaygrounds(
    @Query('page') int page,
    @Query('size') int size,
    @Query('search') String? search,
    @Query('avgRate') int? avgRate,
    @Query('cityId') int? cityId,
  );

  @GET(SignUpApiConstants.cities)
  Future<CitiesResponseModel> getCities();

  @GET('reservations/slots')
  Future<ReservationSlotsResponseModel> getReservationSlots(
    @Query('playgroundId') int playgroundId,
    @Query('date') String day,
  );

  @POST('reservations/book')
  Future<ReserveResponseModel> bookReservation(@Body() ReserveRequestModel reserveRequestModel);

  @POST('playground/favourites')
  Future<void> addToFavourites(@Body() TogglePaygroundFavorite togglePaygroundFavorite);
}
