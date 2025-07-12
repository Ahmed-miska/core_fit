import 'package:core_fit/features/auth/sign_up/data/models/cities_response_model.dart';
import 'package:core_fit/features/reservation/staduims/data/models/playgrounds_response_model.dart';
import 'package:core_fit/features/reservation/staduims/data/models/reserve_request_model.dart';
import 'package:core_fit/features/reservation/staduims/data/repos/playgrounds_repo.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'playgrounds_state.dart';
part 'playgrounds_cubit.freezed.dart';

class PlaygroundsCubit extends Cubit<PlaygroundsState> {
  PlaygroundsCubit(this._playgroundsRepo) : super(const PlaygroundsState.initial());
  final PlaygroundsRepo _playgroundsRepo;
  List<PlaygroundModel> playgrounds = [];

  int page = 1;
  int totalPages = 1;
  TextEditingController searchController = TextEditingController();
  int? avgRate;
  int? selectedCityId = 0;
  bool isLoadingMore = false;

  Future<void> getPlaygrounds() async {
    if (page == 1) {
      emit(PlaygroundsState.getPlaygroundsLoading());
      isLoadingMore = false;
      playgrounds.clear();
    }
    final result = await _playgroundsRepo.getPlaygrounds(page: page, search: searchController.text, avgRate: avgRate, cityId: selectedCityId);
    result.when(
      success: (response) {
        playgrounds.addAll(response.data?.playgrounds ?? []);
        totalPages = response.data?.totalPages ?? 1;
        emit(PlaygroundsState.getPlaygroundsSuccess(playgrounds));
      },
      failure: (failure) {
        emit(PlaygroundsState.getPlaygroundsFailure(error: failure.apiErrorModel.message ?? ''));
      },
    );
  }

  List<City> citiesList = [];

  Future<void> getCities() async {
    emit(PlaygroundsState.citiesLoading());
    final result = await _playgroundsRepo.getCities();
    result.when(
      success: (response) {
        citiesList = response.data!.cities ?? [];
        emit(PlaygroundsState.citiesSuccess(response.data!.cities ?? []));
      },
      failure: (error) {
        emit(PlaygroundsState.citiesError(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  List<String> selectedReservationSlots = [];
  String selectedDay = DateTime.now().toIso8601String().split('T').first;

  void setSelectedSlots(List<String> slots) {
    selectedReservationSlots = slots;
    // لو حبيت تبعت state، اعمل emit لحالة جديدة مثلاً
  }

  void setSelectedDay(String day) {
    selectedDay = day;
    // لو حبيت تبعت state، اعمل emit لحالة جديدة مثلاً
  }

  PlaygroundModel? playgroundModel;
  void setPlaygroundModel(PlaygroundModel model) {
    playgroundModel = model;
    // لو حبيت تبعت state، اعمل emit لحالة جديدة مثلاً
  }

  Future<void> getReservationSlots(int playgroundId, String day) async {
    emit(PlaygroundsState.reservationSlotsLoading());
    final result = await _playgroundsRepo.getReservationSlots(playgroundId: playgroundId, day: day);
    result.when(
      success: (response) {
        emit(PlaygroundsState.reservationSlotsSuccess(response.data ?? []));
      },
      failure: (error) {
        emit(PlaygroundsState.reservationSlotsError(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> bookReservation(String paymentMethod) async {
    emit(PlaygroundsState.reserveLoading());
    final result = await _playgroundsRepo.bookReservation(ReserveRequestModel(
      playgroundId: playgroundModel!.id!,
      date: selectedDay,
      slots: selectedReservationSlots,
      paymentMethod: paymentMethod,
    ));
    result.when(
      success: (response) {
        emit(PlaygroundsState.reserveSuccess());
      },
      failure: (error) {
        emit(PlaygroundsState.reserveError(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> toggleFavourite(int playgroundId, bool type) async {
    emit(PlaygroundsState.favoriteLoading());
    final result = await _playgroundsRepo.addToFavourites(playgroundId, type);
    result.when(
      success: (response) {
        updatePlaygroundFavourites(playgroundId);
        emit(PlaygroundsState.favoriteSuccess());
      },
      failure: (error) {
        emit(PlaygroundsState.favoriteError(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  void updatePlaygroundFavourites(int playgroundId) {
    for (var i = 0; i < playgrounds.length; i++) {
      if (playgrounds[i].id == playgroundId) {
        playgrounds[i].favourite = !playgrounds[i].favourite!;
        break;
      }
    }
    emit(PlaygroundsState.getPlaygroundsSuccess(playgrounds));
  }

  void resetFilters() {
    searchController.clear();
    avgRate = null;
    selectedCityId = null;
    page = 1;
    playgrounds.clear();
    totalPages = 1;
    isLoadingMore = false;
  }
}
