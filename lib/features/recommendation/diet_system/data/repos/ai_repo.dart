import 'dart:io';
import 'package:core_fit/core/networking/api_error_handler.dart';
import 'package:core_fit/core/networking/api_result.dart';
import 'package:core_fit/features/recommendation/diet_system/data/apis/ai_services.dart';
import 'package:core_fit/features/recommendation/diet_system/data/models/request/weakly_recommendation_request_model.dart';
import 'package:core_fit/features/recommendation/diet_system/data/models/response/player_info_response_model.dart';
import 'package:core_fit/features/recommendation/diet_system/data/models/response/weakly_recommendation_response_model.dart';
import 'package:dio/dio.dart';

class AiRepo {
  final AIServices aiServices;
  AiRepo(this.aiServices);

  Future<ApiResult<WeaklyRecommendationResponseModel>> getRecommendation(NutritionRequestModel model) async {
    try {
      final response = await aiServices.getRecommendation(model.toJson());
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<PlayerResponseModel>> processImage(File imageFile) async {
    try {
      final fileName = imageFile.path.split('/').last;
      final multipartFile = await MultipartFile.fromFile(imageFile.path, filename: fileName);

      final response = await aiServices.processImage(FormData.fromMap({'file': multipartFile}));
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
