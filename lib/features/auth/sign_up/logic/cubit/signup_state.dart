part of 'signup_cubit.dart';

@freezed
class SignupState<T> with _$SignupState<T> {
  const factory SignupState.initial() = _Initial;

// Governrates
  const factory SignupState.governoratesLoading() = GovernoratesLoading;
  const factory SignupState.governoratesSuccess(List<Governorate> response) = GovernoratesSuccess<T>;
  const factory SignupState.governoratesError({required String error}) = GovernoratesError;

  // Cities
  const factory SignupState.citiesLoading() = CitiesLoading;
  const factory SignupState.citiesSuccess(List<City> response) = CitiesSuccess<T>;
  const factory SignupState.citiesError({required String error}) = CitiesError;

  // CanSignUp
  const factory SignupState.canSignUpLoading() = CanSignUpLoading;
  const factory SignupState.canSignUpSuccess(T data) = CanSignUpSuccess<T>;
  const factory SignupState.canSignUpError({required String error}) = CanSignUpError;

  // Signup
  const factory SignupState.signupLoading() = SignupLoading;
  const factory SignupState.signupSuccess(T data) = SignupSuccess<T>;
  const factory SignupState.signupError({required String error}) = SignupError;
}
