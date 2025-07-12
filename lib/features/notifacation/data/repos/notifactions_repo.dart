import 'package:core_fit/core/networking/api_error_handler.dart';
import 'package:core_fit/core/networking/api_result.dart';
import 'package:core_fit/features/notifacation/data/apis/notifactions_services.dart';
import 'package:core_fit/features/notifacation/data/models/notifactions_response_model.dart';

class NotifactionsRepo {
  final NotifactionsServices notifactionsServices;

  NotifactionsRepo(this.notifactionsServices);

  Future<ApiResult<NotifiactionsResponseModel>> getNotifactions() async {
    try {
      final response = await notifactionsServices.getNotifactions('1000');
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
