part of 'ai_cubit.dart';

@freezed
class AiState with _$AiState {
  const factory AiState.initial() = _Initial;


  const factory AiState.getRecommendationLoading() = GetRecommendationLoading;

  const factory AiState.getRecommendationSuccess(WeaklyRecommendationResponseModel model ) = GetRecommendationSuccess;

  const factory AiState.getRecommendationError({required String message}) = GetRecommendationError;


  const factory AiState.getPlayerInfoLoading() = GetPlayerInfoLoading;

  const factory AiState.getPlayerInfoSuccess(PlayerResponseModel model) = GetPlayerInfoSuccess;

  const factory AiState.getPlayerInfoError({required String message}) = GetPlayerInfoError;


}
