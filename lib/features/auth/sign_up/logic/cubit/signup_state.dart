part of 'signup_cubit.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = _Initial;

// Governrates
//
  const factory SignupState.governoratesLoading() = GovernoratesLoading;
  const factory SignupState.governoratesSuccess(List<Governorate> response) = GovernoratesSuccess;
  const factory SignupState.governoratesError(ErrorHandler errorHandler) = GovernoratesError; 

}
