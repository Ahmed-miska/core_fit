import 'package:core_fit/core/helpers/shared_pref_helper.dart';
import 'package:core_fit/core/networking/dio_factory.dart';
import 'package:core_fit/features/auth/login/data/models/login_request_body.dart';
import 'package:core_fit/features/auth/login/data/repos/login_repo.dart';
import 'package:core_fit/features/auth/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void login(LoginRequestBody loginRequestBody) async {
    emit(LoginState.loading());
    final response = await _loginRepo.login(loginRequestBody);
    response.when(
      success: (loginResponse) async {
        await SharedPrefHelper().saveUserData(loginResponse);
        DioFactory.setTokenIntoHeaderAfterLogin(loginResponse.data?.token ?? '');

        // Send Firebase token after successful login
        String fcmToken = SharedPrefHelper().getFcmToken();
        if (fcmToken.isNotEmpty) {
          await _loginRepo.sendFirebaseToken(fcmToken);
        }

        emit(LoginState.success(loginResponse));
      },
      failure: (error) => emit(LoginState.error(error: error.apiErrorModel.message ?? '')),
    );
  }
}
