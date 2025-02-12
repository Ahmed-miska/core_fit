import 'package:core_fit/core/networking/api_error_handler.dart';
import 'package:core_fit/core/networking/api_result.dart';
import 'package:core_fit/features/auth/sign_up/data/apis/sign_up_api_service.dart';
import 'package:core_fit/features/auth/sign_up/data/models/governorates_response_model.dart';

class SignupRepo {
  final SignUpApiService _apiService;

  SignupRepo(this._apiService);

  Future<ApiResult<GovernoratesResponseModel>> getGovernorates() async {
    try {
      final response = await _apiService.getGovernorates();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
