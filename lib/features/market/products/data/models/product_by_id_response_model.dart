import 'package:core_fit/features/market/market_store/data/models/categories_response_model.dart';
import 'package:core_fit/features/market/market_store/data/models/markets_response_model.dart';
import 'package:core_fit/features/market/products/data/models/products_response_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_by_id_response_model.g.dart';

@JsonSerializable()
class ProductByIdResponseModel {
  String? message;
  @JsonKey(name: 'data')
  ProductDetails? product;

  ProductByIdResponseModel({this.message, this.product});

  factory ProductByIdResponseModel.fromJson(Map<String, dynamic> json) => _$ProductByIdResponseModelFromJson(json);
}

@JsonSerializable()
class ProductDetails {
  int? id;
  String? name;
  String? description;
  double? price;
  double? offer;
  List<String>? images;
  Market? market;
  Category? subCategory;
  bool? favourite;

  ProductDetails({this.id, this.name, this.description, this.price, this.offer, this.images, this.market, this.subCategory, this.favourite});

  factory ProductDetails.fromJson(Map<String, dynamic> json) => _$ProductDetailsFromJson(json);
}
