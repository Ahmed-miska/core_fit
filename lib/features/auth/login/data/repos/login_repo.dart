import 'package:core_fit/core/networking/api_error_handler.dart';
import 'package:core_fit/core/networking/api_result.dart';
import 'package:core_fit/core/networking/api_service.dart';
import 'package:core_fit/core/networking/message_response_model.dart';
import 'package:core_fit/features/auth/login/data/models/login_request_body.dart';
import 'package:core_fit/features/auth/login/data/models/login_response.dart';
import 'package:core_fit/features/auth/login/data/models/token_response_model.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<MessageResponseModel>> sendFirebaseToken(String token) async {
    try {
      final response = await _apiService.sendFirebaseToken({
        'token': token,
      });
      print(token);
      return ApiResult.success(response);
    } catch (error) {
      print(error);
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<TokenResponseModel>> getUserFirebaseToken() async {
    try {
      final response = await _apiService.getUserFirebaseToken();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
