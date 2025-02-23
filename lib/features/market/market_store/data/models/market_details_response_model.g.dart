// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketDetailsResponseModel _$MarketDetailsResponseModelFromJson(
        Map<String, dynamic> json) =>
    MarketDetailsResponseModel(
      message: json['message'] as String?,
      marketData: json['data'] == null
          ? null
          : MarketData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MarketDetailsResponseModelToJson(
        MarketDetailsResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.marketData,
    };

MarketData _$MarketDataFromJson(Map<String, dynamic> json) => MarketData(
      averageRate: (json['averageRate'] as num?)?.toDouble(),
      rateCount: (json['rateCount'] as num?)?.toDouble(),
      market: json['Market'] == null
          ? null
          : Market.fromJson(json['Market'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MarketDataToJson(MarketData instance) =>
    <String, dynamic>{
      'averageRate': instance.averageRate,
      'rateCount': instance.rateCount,
      'Market': instance.market,
    };
