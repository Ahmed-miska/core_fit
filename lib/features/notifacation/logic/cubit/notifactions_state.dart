part of 'notifactions_cubit.dart';

@freezed
class NotifactionsState with _$NotifactionsState {
  const factory NotifactionsState.initial() = _Initial;

  const factory NotifactionsState.notifactionsLoading() = NotifactionsLoading;

  const factory NotifactionsState.notifactionsSuccess(NotifiactionsResponseModel data) = NotifactionsSuccess;

  const factory NotifactionsState.notifactionsFailure(String message) = NotifactionsFailure;
}
