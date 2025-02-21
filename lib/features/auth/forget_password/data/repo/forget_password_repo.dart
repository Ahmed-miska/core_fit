import 'package:core_fit/core/networking/api_error_handler.dart';
import 'package:core_fit/core/networking/api_result.dart';
import 'package:core_fit/core/networking/message_response_model.dart';
import 'package:core_fit/features/auth/forget_password/data/apis/forget_password_services.dart';

class ForgetPasswordRepo {
  final ForgetPasswordServices _forgetPasswordServices;

  ForgetPasswordRepo(this._forgetPasswordServices);

  Future<ApiResult<MessageResponseModel>> forgetPassword(String email) async {
    try {
      final response = await _forgetPasswordServices.forgetPassword({'email': email});
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<MessageResponseModel>> checkCode(String email, String otp) async {
    try {
      final response = await _forgetPasswordServices.checkCode({'email': email, 'otp': otp});
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<MessageResponseModel>> resetPassword(String email, String otp, String password) async {
    try {
      final response = await _forgetPasswordServices.resetPassword({'email': email, 'otp': otp, 'password': password});
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
