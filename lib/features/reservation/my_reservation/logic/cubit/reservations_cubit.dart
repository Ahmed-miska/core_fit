import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/features/reservation/my_reservation/data/models/reservations_response_model.dart';
import 'package:core_fit/features/reservation/my_reservation/data/repos/reservation_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservations_state.dart';
part 'reservations_cubit.freezed.dart';

class ReservationsCubit extends Cubit<ReservationsState> {
  final ReservationRepo _reservationRepo;
  ReservationsCubit(this._reservationRepo) : super(ReservationsState.initial());

  List<ReservationModel> reservations = [];

  Future<void> getReservations(String status) async {
    emit(ReservationsState.reservationsLoading());

    final result = await _reservationRepo.getReservations(status: status);
    result.when(
      success: (response) {
        reservations = response.data ?? [];
        emit(ReservationsState.reservationsSuccess(response.data ?? []));
      },
      failure: (error) {
        emit(ReservationsState.reservationsError(message: error.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> cancelReservation(String id, BuildContext context) async {
    emit(ReservationsState.cancelLoading());
    final result = await _reservationRepo.cancelReservation(id: id);
    result.when(
      success: (response) {
        context.pop();
        emit(ReservationsState.cancelSuccess());
      },
      failure: (error) {
        emit(ReservationsState.cancelError(message: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
