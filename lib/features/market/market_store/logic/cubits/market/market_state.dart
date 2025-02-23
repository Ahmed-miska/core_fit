part of 'market_cubit.dart';

@freezed
class MarketState<T> with _$MarketState<T> {
  const factory MarketState.initial() = _Initial;

  const factory MarketState.loading() = Loading;
  const factory MarketState.success(List<Market> markets) = Success<T>;
  const factory MarketState.error({required String error}) = Error;

  const factory MarketState.loadingMarketDetails() = LoadingMarketDetails;
  const factory MarketState.successMarketDetails(MarketDetailsResponseModel marketDetails) = SuccessMarketDetails<T>;
  const factory MarketState.errorMarketDetails({required String error}) = ErrorMarketDetails;
}
