import 'package:core_fit/features/market/products/data/models/products_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_response_model.g.dart';
@JsonSerializable()
class FavoritesResponseModel {
  String? message;
  List<Product>? data;

  FavoritesResponseModel({
    this.message,
    this.data,
  });

  factory FavoritesResponseModel.fromJson(Map<String, dynamic> json) => _$FavoritesResponseModelFromJson(json);
}
