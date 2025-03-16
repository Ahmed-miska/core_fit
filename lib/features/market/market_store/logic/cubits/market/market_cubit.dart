import 'package:core_fit/features/market/market_store/data/models/market_details_response_model.dart';
import 'package:core_fit/features/market/market_store/data/models/markets_response_model.dart';
import 'package:core_fit/features/market/market_store/data/repo/market_repo.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_state.dart';
part 'market_cubit.freezed.dart';

class MarketCubit extends Cubit<MarketState> {
  final MarketRepo _marketRepo;
  MarketCubit(this._marketRepo) : super(MarketState.initial());
  List<Market> markets = [];
  TextEditingController marketSearchController = TextEditingController();
  String? categoryId ;
  int page = 1;
  bool hasReachMax = false;

  void reset() {
    if (categoryId=='0') {
      categoryId = null;    
    }
    markets = [];
    page = 1;
    hasReachMax = false;
    getMarkets();
  }

  Future<void> getMarkets({ String? categoryIdd} ) async {
    if (page == 1) {
      emit(MarketState.loading());
    }
    final result = await _marketRepo.getMarkets(page: page, name: marketSearchController.text, categoryId: categoryIdd ?? categoryId);
    result.when(
      success: (response) {
        if (response.data!.markets!.isNotEmpty) {
          markets = markets + response.data!.markets!;
        }
        hasReachMax = response.data!.totalPages == page;
        page++;
        emit(MarketState.success(markets));
      },
      failure: (error) {
        emit(MarketState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> getMarketDetails(int id) async {
    emit(MarketState.loadingMarketDetails());
    final result = await _marketRepo.findMarket(id);
    result.when(
      success: (response) {
        emit(MarketState.successMarketDetails(response));
      },
      failure: (error) {
        emit(MarketState.errorMarketDetails(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  @override
  Future<void> close() {
    marketSearchController.dispose();
    return super.close();
  }
}
