import 'package:core_fit/core/networking/api_constants.dart';
import 'package:core_fit/features/recommendation/diet_system/data/models/response/player_info_response_model.dart';
import 'package:core_fit/features/recommendation/diet_system/data/models/response/weakly_recommendation_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'ai_services.g.dart';


@RestApi(baseUrl: ApiConstants.aiBaseUrl)
abstract class AIServices {
  factory AIServices(Dio dio, {String baseUrl}) = _AIServices;

  @POST('weaklyRecommendation/plan')
  Future<WeaklyRecommendationResponseModel> getRecommendation(@Body() Map<String, dynamic> data);

  @POST('footballPlayerDetection/')
  @MultiPart()
  Future<PlayerResponseModel> processImage(
    @Body() FormData formData,
  );
}
