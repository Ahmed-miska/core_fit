import 'dart:io';

import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/shared_pref_helper.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/features/recommendation/diet_system/data/models/request/weakly_recommendation_request_model.dart';
import 'package:core_fit/features/recommendation/diet_system/data/models/response/player_info_response_model.dart';
import 'package:core_fit/features/recommendation/diet_system/data/models/response/weakly_recommendation_response_model.dart';
import 'package:core_fit/features/recommendation/diet_system/data/repos/ai_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_state.dart';
part 'ai_cubit.freezed.dart';

class AiCubit extends Cubit<AiState> {
  AiCubit(this.aiRepo) : super(AiState.initial());

  final AiRepo aiRepo;

  Future<void> getRecommendation(BuildContext context, NutritionRequestModel model) async {
    emit(AiState.getRecommendationLoading());
    final result = await aiRepo.getRecommendation(model);
    result.when(
      success: (success) async {
        await SharedPrefHelper().saveDietPlan(success); // حفظ الخطة
        emit(AiState.getRecommendationSuccess(success));
        context.pushReplacementNamed(Routes.planScreen);
      },
      failure: (failure) {
        emit(AiState.getRecommendationError(message: failure.apiErrorModel.message ?? 'حدث خطأ'));
      },
    );
  }

  Future<void> processPlayerImage(File imageFile) async {
    emit(AiState.getPlayerInfoLoading());
    final result = await aiRepo.processImage(imageFile);
    result.when(
      success: (PlayerResponseModel response) {
        emit(AiState.getPlayerInfoSuccess(response));
      },
      failure: (failure) {
        emit(AiState.getPlayerInfoError(message: failure.apiErrorModel.message ?? 'حدث خطأ أثناء تحليل الصورة'));
      },
    );
  }
}
