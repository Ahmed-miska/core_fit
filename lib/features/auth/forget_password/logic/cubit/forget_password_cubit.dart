import 'package:core_fit/features/auth/forget_password/data/repo/forget_password_repo.dart';
import 'package:core_fit/features/auth/forget_password/logic/cubit/forget_password_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  final ForgetPasswordRepo _forgetPasswordRepo;
  ForgetPasswordCubit(this._forgetPasswordRepo) : super(ForgetPasswordState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final resetFormKey = GlobalKey<FormState>();
  void forgetPassword() async {
    otpController.text = '';
    emit(ForgetPasswordState.forgetPasswordLoading());
    final response = await _forgetPasswordRepo.forgetPassword(emailController.text);
    response.when(
      success: (messageResponseModel) {
        emit(ForgetPasswordState.forgetPasswordSuccess(messageResponseModel.message ?? ''));
      },
      failure: (error) => emit(ForgetPasswordState.forgetPasswordError(error: error.apiErrorModel.message ?? '')),
    );
  }
  void checkCode() async {
    emit(ForgetPasswordState.checkCodeLoading());
    final response = await _forgetPasswordRepo.checkCode(emailController.text, otpController.text);
    response.when(
      success: (messageResponseModel) {
        emit(ForgetPasswordState.checkCodeSuccess(messageResponseModel.message ?? ''));
      },
      failure: (error) => emit(ForgetPasswordState.checkCodeError(error: error.apiErrorModel.message ?? '')),
    );
  }

  void resetPassword() async {
    emit(ForgetPasswordState.resetPasswordLoading());
    final response = await _forgetPasswordRepo.resetPassword(emailController.text, otpController.text, newPasswordController.text);
    response.when(
      success: (messageResponseModel) {
        emit(ForgetPasswordState.resetPasswordSuccess(messageResponseModel.message ?? ''));
      },
      failure: (error) => emit(ForgetPasswordState.resetPasswordError(error: error.apiErrorModel.message ?? '')),
    );
  }
}
