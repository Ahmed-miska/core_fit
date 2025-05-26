import 'package:core_fit/core/networking/api_error_handler.dart';
import 'package:core_fit/core/networking/api_result.dart';
import 'package:core_fit/features/auth/sign_up/data/apis/sign_up_api_service.dart';
import 'package:core_fit/features/auth/sign_up/data/models/cities_response_model.dart';
import 'package:core_fit/features/auth/sign_up/data/models/governorates_response_model.dart';
import 'package:core_fit/features/auth/sign_up/data/models/sign_up_request_model.dart';
import 'package:dio/dio.dart';
import '../../../../../core/networking/message_response_model.dart';
import '../models/can_signup_request_model.dart';

class SignupRepo {
  final SignUpApiService _signUpApiService;
  SignupRepo(this._signUpApiService);

  Future<ApiResult<GovernoratesResponseModel>> getGovernorates() async {
    try {
      final response = await _signUpApiService.getGovernorates();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<CitiesResponseModel>> getCities(String governorateId) async {
    try {
      final response = await _signUpApiService.getCities(governorateId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<MessageResponseModel>> canSignup(CanSignupRequestModel canSignupRequestModel) async {
    try {
      final response = await _signUpApiService.canSignup(canSignupRequestModel);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<MessageResponseModel>> signUp(SignUpRequestModel signUpRequestModel) async {
    FormData formData = FormData.fromMap(
      {
        'username': signUpRequestModel.username,
        'email': signUpRequestModel.email,
        'phone': signUpRequestModel.phone,
        'password': signUpRequestModel.password,
        'birthDate': signUpRequestModel.birthDate,
        'gender': signUpRequestModel.gender,
        'cityId': signUpRequestModel.cityId,
        'otp': signUpRequestModel.otp,
        'type': signUpRequestModel.type,
        if (signUpRequestModel.image != null) 'image': await MultipartFile.fromFile(signUpRequestModel.image!.path),
      },
    );
    try {
      final response = await _signUpApiService.signUp(formData);
      print("Response Data: ${response.message}");
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
   Future<ApiResult<MessageResponseModel>> sendFirebaseToken(String token) async {
    try {
      final response = await _signUpApiService.sendFirebaseToken({
        'token': token,
      });
      print(token);
      return ApiResult.success(response);
    } catch (error) {
      print(error);
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
