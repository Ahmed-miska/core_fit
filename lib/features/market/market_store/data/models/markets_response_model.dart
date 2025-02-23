import 'package:freezed_annotation/freezed_annotation.dart';

import 'categories_response_model.dart';

part 'markets_response_model.g.dart';

@JsonSerializable()
class MarketsResponseModel {
  @JsonKey(name: 'content')
  List<Market>? markets;
  int? totalPages;

  MarketsResponseModel({this.markets, this.totalPages});
  factory MarketsResponseModel.fromJson(Map<String, dynamic> json) => _$MarketsResponseModelFromJson(json);
}

@JsonSerializable()
class Market {
  int? id;
  String? name;
  String? description;
  Category? category;
  String? lat;
  String? lng;
  String? address;
  String? imageUrl;
  bool? opened;

  Market({this.id, this.name, this.description, this.category, this.lat, this.lng, this.address, this.imageUrl, this.opened});
  factory Market.fromJson(Map<String, dynamic> json) => _$MarketFromJson(json);
}
