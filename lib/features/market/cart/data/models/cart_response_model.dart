import 'package:json_annotation/json_annotation.dart';
part 'cart_response_model.g.dart';

@JsonSerializable()
class CartResponseModel {
  String? message;
  Data? data;

  CartResponseModel({
    this.message,
    this.data,
  });

  factory CartResponseModel.fromJson(Map<String, dynamic> json) => _$CartResponseModelFromJson(json);
}

@JsonSerializable()
class Data {
  int? id;
  int? marketId;
  double? totalPrice;
  List<CartProduct>? products;

  Data({
    this.id,
    this.marketId,
    this.totalPrice,
    this.products,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@JsonSerializable()
class CartProduct {
  int? id;
  String? name;
  String? description;
  double? price;
  double? offer;
  String? subCategoryName;
  List<String>? images;
  int? count;
  double? total;

  CartProduct({
    this.id,
    this.name,
    this.description,
    this.price,
    this.offer,
    this.subCategoryName,
    this.images,
    this.count,
    this.total,
  });

  factory CartProduct.fromJson(Map<String, dynamic> json) => _$CartProductFromJson(json);

}
