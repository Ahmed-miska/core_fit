
import 'package:core_fit/core/networking/api_constants.dart';
import 'package:core_fit/features/notifacation/data/models/notifactions_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'notifactions_services.g.dart';
@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class NotifactionsServices {

  factory NotifactionsServices(Dio dio, {String baseUrl}) = _NotifactionsServices;

  @GET('/notifications')
  Future<NotifiactionsResponseModel> getNotifactions(
    @Query('size') String status
  );
}