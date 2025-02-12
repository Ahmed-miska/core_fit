import 'package:core_fit/core/networking/api_error_handler.dart';
import 'package:core_fit/features/auth/sign_up/data/models/governorates_response_model.dart';
import 'package:core_fit/features/auth/sign_up/data/repos/signup_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.dart';
part 'signup_cubit.freezed.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;
  SignupCubit(this._signupRepo) : super(SignupState.initial());

  List<Governorate> governoratesList = [];
  TextEditingController governorateController = TextEditingController();

  int governorateId = 0;

  void getGovernorates() async {
    emit(SignupState.governoratesLoading());
    final result = await _signupRepo.getGovernorates();
    result.when(
      success: (response) {
        governoratesList = response.data!.governorates ?? [];
        emit(SignupState.governoratesSuccess(governoratesList));
      },
      failure: (error) {
        emit(SignupState.governoratesError(error));
      },
    );
  }
}
