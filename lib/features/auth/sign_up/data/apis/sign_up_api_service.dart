import 'package:core_fit/core/networking/api_constants.dart';
import 'package:core_fit/features/auth/sign_up/data/apis/sign_up_api_constants.dart';
import 'package:core_fit/features/auth/sign_up/data/models/governorates_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'sign_up_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class SignUpApiService {
  factory SignUpApiService(Dio dio) => _SignUpApiService(dio);

  @GET(SignUpApiConstants.governorates)
  Future<GovernoratesResponseModel> getGovernorates();
}
