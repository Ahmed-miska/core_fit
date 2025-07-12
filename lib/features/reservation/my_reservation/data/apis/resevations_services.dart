import 'package:core_fit/core/networking/api_constants.dart';
import 'package:core_fit/core/networking/message_response_model.dart';
import 'package:core_fit/features/reservation/my_reservation/data/models/reservations_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'resevations_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ReservationsServices {
  factory ReservationsServices(Dio dio, {String baseUrl}) = _ReservationsServices ;

  @GET('reservations/my')
  Future<ReservetionsResponseModel> getReservations(@Query('status') String status);

  @POST('reservations/cancel')
  Future<MessageResponseModel> cancelReservation(@Query('reservationId') String id);
}
