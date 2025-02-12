import 'package:core_fit/core/helpers/constants.dart';
import 'package:core_fit/core/helpers/shared_pref_helper.dart';
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
        await SharedPrefHelper.setData(SharedPrefKeys.user, loginResponse.data);
        await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, loginResponse.data!.token ?? '');
        emit(LoginState.success(loginResponse));
      },
      failure: (error) => emit(LoginState.error(error: error.apiErrorModel.message ?? '')),
    );
  }
}
