import 'package:core_fit/features/market/market_store/data/models/categories_response_model.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../market_store/data/models/markets_response_model.dart';
part 'products_response_model.g.dart';

@JsonSerializable()
class ProductsResponseModel {
  @JsonKey(name: 'content')
  List<Product>? products;
  bool? empty;
  int? totalPages;
  ProductsResponseModel({this.products, this.empty, this.totalPages});

  factory ProductsResponseModel.fromJson(Map<String, dynamic> json) => _$ProductsResponseModelFromJson(json);
}

@JsonSerializable()
class Product {
  int? id;
  String? name;
  String? description;
  double? price;
  double? offer;
  List<String>? images;
  Market? market;
  Category? subCategory;

  Product({this.id, this.name, this.description, this.price, this.offer, this.images, this.market, this.subCategory});

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}
