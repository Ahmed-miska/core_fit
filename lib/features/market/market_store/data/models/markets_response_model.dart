import 'package:freezed_annotation/freezed_annotation.dart';

import 'categories_response_model.dart';

part 'markets_response_model.g.dart';

@JsonSerializable()
class MarketsResponseModel {
  String? message;
  Data? data;

  MarketsResponseModel({this.message, this.data});

  factory MarketsResponseModel.fromJson(Map<String, dynamic> json) => _$MarketsResponseModelFromJson(json); 
 

 
}

@JsonSerializable()
class Data {
  List<Market>? markets;
  int? totalPages;

  Data({this.markets, this.totalPages});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
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
