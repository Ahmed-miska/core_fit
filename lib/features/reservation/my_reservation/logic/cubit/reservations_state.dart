part of 'reservations_cubit.dart';

@freezed
class ReservationsState<T> with _$ReservationsState<T> {
  const factory ReservationsState.initial() = _Initial;

  const factory ReservationsState.reservationsLoading() = _ReservationsLoading;
  const factory ReservationsState.reservationsSuccess(List<ReservationModel> reservations) = _ReservationsSuccess<T>;
  const factory ReservationsState.reservationsError({required String message}) = _ReservationsError;


  const factory ReservationsState.cancelLoading() = _CancelLoading;
  const factory ReservationsState.cancelSuccess() = _CancelSuccess;
  const factory ReservationsState.cancelError({required String message}) = _CancelError;
}
