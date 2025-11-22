import 'package:core_fit/core/networking/api_constants.dart';
import 'package:core_fit/features/reservation/staduims/data/models/reserve_request_model.dart';
import 'package:core_fit/features/reservation/staduims/data/models/reserve_respnse_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'reservation_service.g.dart';
@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ReservationService {
  factory ReservationService(Dio dio, {String baseUrl}) = _ReservationService;

  @POST('reservations/book')
  Future<ReserveResponseModel> reserve(@Body() ReserveRequestModel reserveRequestModel);
}