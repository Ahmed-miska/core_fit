import 'package:core_fit/core/networking/api_error_handler.dart';
import 'package:core_fit/core/networking/api_result.dart';
import 'package:core_fit/core/networking/message_response_model.dart';
import 'package:core_fit/features/reservation/my_reservation/data/apis/resevations_services.dart';
import 'package:core_fit/features/reservation/my_reservation/data/models/reservations_response_model.dart';

class ReservationRepo {
  final ReservationsServices _resevationsServices;

  ReservationRepo(this._resevationsServices);


  Future<ApiResult< ReservetionsResponseModel>> getReservations({required String status}) async{

    try {

      final response = await _resevationsServices.getReservations( status);
      return ApiResult.success(response);
      
    } catch (e) {

      return ApiResult.failure(ErrorHandler.handle(e));
      
    }
  }

  Future<ApiResult<MessageResponseModel>> cancelReservation({required String id}) async{
    try {
      final response = await _resevationsServices.cancelReservation(id);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }



}
