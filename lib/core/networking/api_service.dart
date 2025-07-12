import 'package:core_fit/core/networking/api_constants.dart';
import 'package:core_fit/features/auth/login/data/models/login_request_body.dart';
import 'package:core_fit/features/auth/login/data/models/login_response.dart';
import 'package:core_fit/core/networking/message_response_model.dart';
import 'package:core_fit/features/auth/login/data/models/token_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST('auth/firebase-token')
  Future<MessageResponseModel> sendFirebaseToken(
    @Body() Map<String, dynamic> body,
  );

  @GET('auth/user_firebase')
  Future<TokenResponseModel> getUserFirebaseToken();

}
