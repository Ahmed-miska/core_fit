import 'package:core_fit/core/networking/api_constants.dart';
import 'package:core_fit/core/networking/message_response_model.dart';
import 'package:core_fit/features/auth/forget_password/data/apis/forget_password_constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'forget_password_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ForgetPasswordServices {
  factory ForgetPasswordServices(Dio dio) => _ForgetPasswordServices(dio);

  @POST(ForgetPasswordConstants.forgetPassword)
  Future<MessageResponseModel> forgetPassword(@Body() Map<String, dynamic> data);

  @POST(ForgetPasswordConstants.checkCode)
  Future<MessageResponseModel> checkCode(@Body() Map<String, dynamic> data);

  @POST(ForgetPasswordConstants.resetPassword)
  Future<MessageResponseModel> resetPassword(@Body() Map<String, dynamic> data);
}
