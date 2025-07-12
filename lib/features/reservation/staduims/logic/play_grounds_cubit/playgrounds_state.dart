part of 'playgrounds_cubit.dart';

@freezed
class PlaygroundsState<T> with _$PlaygroundsState<T> {
  const factory PlaygroundsState.initial() = _Initial;

  const factory PlaygroundsState.getPlaygroundsLoading() = GetPlaygroundsLoading;

  const factory PlaygroundsState.getPlaygroundsSuccess(List<PlaygroundModel> playgrounds) = GetPlaygroundsSuccess;

  const factory PlaygroundsState.getPlaygroundsFailure({required String error}) = GetPlaygroundsFailure;

  // Cities
  const factory PlaygroundsState.citiesLoading() = CitiesLoading;
  const factory PlaygroundsState.citiesSuccess(List<City> response) = CitiesSuccess<T>;
  const factory PlaygroundsState.citiesError({required String error}) = CitiesError;

  // Reservation Slots
  const factory PlaygroundsState.reservationSlotsLoading() = ReservationSlotsLoading;
  const factory PlaygroundsState.reservationSlotsSuccess(List<String> slots) = ReservationSlotsSuccess<T>;
  const factory PlaygroundsState.reservationSlotsError({required String error}) = ReservationSlotsError;

  // reserve
  const factory PlaygroundsState.reserveLoading() = ReserveLoading;
  const factory PlaygroundsState.reserveSuccess() = ReserveSuccess<T>;
  const factory PlaygroundsState.reserveError({required String error}) = ReserveError;


  // favorite
  const factory PlaygroundsState.favoriteLoading() = FavoriteLoading;
  const factory PlaygroundsState.favoriteSuccess() = FavoriteSuccess<T>;
  const factory PlaygroundsState.favoriteError({required String error}) = FavoriteError;
}
