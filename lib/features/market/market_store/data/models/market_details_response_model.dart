import 'package:core_fit/features/market/market_store/data/models/markets_response_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'market_details_response_model.g.dart';

@JsonSerializable()
class MarketDetailsResponseModel {
  String? message;
  @JsonKey(name: 'data')
  MarketData? marketData;

  MarketDetailsResponseModel({this.message, this.marketData});

  factory MarketDetailsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MarketDetailsResponseModelFromJson(json);

  

}

@JsonSerializable()
class MarketData {
  double? averageRate;
  double? rateCount;
  @JsonKey(name: 'Market')
  Market? market;

  MarketData({this.averageRate, this.rateCount, this.market});

  factory MarketData.fromJson(Map<String, dynamic> json) =>
      _$MarketDataFromJson(json);
}
