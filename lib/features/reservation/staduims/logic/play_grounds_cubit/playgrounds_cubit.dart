import 'package:core_fit/features/auth/sign_up/data/models/cities_response_model.dart';
import 'package:core_fit/features/reservation/staduims/data/models/playgrounds_response_model.dart';
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
