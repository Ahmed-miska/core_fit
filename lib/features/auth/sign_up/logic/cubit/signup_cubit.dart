import 'dart:io';

import 'package:core_fit/features/auth/sign_up/data/models/governorates_response_model.dart';
import 'package:core_fit/features/auth/sign_up/data/models/sign_up_request_model.dart';
import 'package:core_fit/features/auth/sign_up/data/repos/signup_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/can_signup_request_model.dart';
import '../../data/models/cities_response_model.dart';
part 'signup_state.dart';
part 'signup_cubit.freezed.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;
  SignupCubit(this._signupRepo) : super(SignupState.initial());
  List<Governorate> governoratesList = [];
  List<City> citiesList = [];

  File? image;
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();
  TextEditingController genderController = TextEditingController()..text = 'MALE';
  TextEditingController governorateController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  int governorateId = 0;
  int cityId = 0;

  void getGovernorates() async {
    emit(SignupState.governoratesLoading());
    final result = await _signupRepo.getGovernorates();
    result.when(
      success: (response) {
        governoratesList = response.data!.governorates ?? [];
        emit(SignupState.governoratesSuccess(governoratesList));
      },
      failure: (error) {
        emit(SignupState.governoratesError(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  void getCities(String governorateId) async {
    emit(SignupState.citiesLoading());
    final result = await _signupRepo.getCities(governorateId);
    result.when(
      success: (response) {
        citiesList = response.data!.cities ?? [];
        emit(SignupState.citiesSuccess(response.data!.cities ?? []));
      },
      failure: (error) {
        emit(SignupState.citiesError(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  void canSignup(CanSignupRequestModel canSignupRequestModel) async {
    emit(SignupState.canSignUpLoading());
    final result = await _signupRepo.canSignup(canSignupRequestModel);
    result.when(
      success: (response) async {
        emit(SignupState.canSignUpSuccess(response));
      },
      failure: (error) {
        emit(SignupState.canSignUpError(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  void signup() async {
    emit(SignupState.signupLoading());
    final result = await _signupRepo.signUp(SignUpRequestModel(
      username: userNameController.text,
      email: emailController.text,
      phone: phoneController.text,
      password: passwordController.text,
      birthDate: birthDateController.text,
      gender: genderController.text,
      cityId: cityId.toString(),
      otp: otpController.text,
      type: 'GENERAL',
      image: image,
    ));
    result.when(
      success: (response) {
        emit(SignupState.signupSuccess(response));
      },
      failure: (error) {
        emit(SignupState.signupError(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  void resentOtp() async {
    otpController.text = '';
    emit(SignupState.canSignUpLoading());
    final result = await _signupRepo.canSignup(
      CanSignupRequestModel(phone: phoneController.text, email: emailController.text),
    );
    result.when(
      success: (response) {
        emit(SignupState.canSignUpSuccess(response));
      },
      failure: (error) {
        emit(SignupState.canSignUpError(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
