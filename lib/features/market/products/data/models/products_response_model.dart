import 'package:json_annotation/json_annotation.dart';
part 'products_response_model.g.dart';

@JsonSerializable()
class ProductsResponseModel {
  String? message;
  Data? data;

  ProductsResponseModel({this.message, this.data});

  factory ProductsResponseModel.fromJson(Map<String, dynamic> json) => _$ProductsResponseModelFromJson(json);
}

@JsonSerializable()
class Data {
  int? totalPages;
  List<Product>? products;

  Data({this.totalPages, this.products});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@JsonSerializable()
class Product {
  int? id;
  String? name;
  String? description;
  double? price;
  double? offer;
  String? marketName;
  String? subCategoryName;
  List<String>? images;
  bool? hidden;
  bool? favourite;

  Product({this.id, this.name, this.description, this.price, this.offer, this.marketName, this.subCategoryName, this.images, this.hidden, this.favourite});

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}
