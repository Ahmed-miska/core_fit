
import 'package:core_fit/core/networking/api_constants.dart';
import 'package:core_fit/core/networking/message_response_model.dart';
import 'package:core_fit/features/auth/sign_up/data/apis/sign_up_api_constants.dart';
import 'package:core_fit/features/auth/sign_up/data/models/cities_response_model.dart';
import 'package:core_fit/features/auth/sign_up/data/models/governorates_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/can_signup_request_model.dart';

part 'sign_up_api_service.g.dart';
@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class SignUpApiService {
  factory SignUpApiService(Dio dio) => _SignUpApiService(dio);
  @GET(SignUpApiConstants.governorates)
  Future<GovernoratesResponseModel> getGovernorates();
  @GET(SignUpApiConstants.cities)
  Future<CitiesResponseModel> getCities(@Query('governorate_id') String governorateId);
  @POST(SignUpApiConstants.canSignUp)
  Future<MessageResponseModel> canSignup(@Body() CanSignupRequestModel canSignupRequestModel);
  @POST(SignUpApiConstants.signUp)
  @MultiPart() // إشارة إلى أن الطلب يحتوي على بيانات multipart
  Future<MessageResponseModel> signUp(
    @Body() FormData formData,
  );
}

