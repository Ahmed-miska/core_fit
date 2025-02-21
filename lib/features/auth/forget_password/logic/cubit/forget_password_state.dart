import 'package:freezed_annotation/freezed_annotation.dart';
part 'forget_password_state.freezed.dart';

@freezed
class ForgetPasswordState<T> with _$ForgetPasswordState<T> {
  const factory ForgetPasswordState.initial() = _Initial;

  // ForgetPassword
  const factory ForgetPasswordState.forgetPasswordLoading() = ForgetPassworLoading;
  const factory ForgetPasswordState.forgetPasswordSuccess(T data) = ForgetPasswordSuccess<T>;
  const factory ForgetPasswordState.forgetPasswordError({required String error}) = ForgetPasswordError<T>;


  //CheckCode
  const factory ForgetPasswordState.checkCodeLoading() = CheckCodeLoading;
  const factory ForgetPasswordState.checkCodeSuccess(T data) = CheckCodeSuccess<T>;
  const factory ForgetPasswordState.checkCodeError({required String error}) = CheckCodeError<T>;

  // reset password
  const factory ForgetPasswordState.resetPasswordLoading() = ResetPasswordLoading;
  const factory ForgetPasswordState.resetPasswordSuccess(T data) = ResetPasswordSuccess<T>;
  const factory ForgetPasswordState.resetPasswordError({required String error}) = ResetPasswordError<T>;
}
