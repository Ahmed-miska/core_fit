import 'package:core_fit/features/market/products/data/models/products_response_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_by_id_response_model.g.dart';

@JsonSerializable()
class ProductByIdResponseModel {
  String? message;
  @JsonKey(name: 'data')
  Product? product;

  ProductByIdResponseModel({this.message, this.product});

  factory ProductByIdResponseModel.fromJson(Map<String, dynamic> json) => _$ProductByIdResponseModelFromJson(json);
}
