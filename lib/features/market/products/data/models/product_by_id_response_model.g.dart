// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_by_id_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductByIdResponseModel _$ProductByIdResponseModelFromJson(
        Map<String, dynamic> json) =>
    ProductByIdResponseModel(
      message: json['message'] as String?,
      product: json['data'] == null
          ? null
          : ProductDetails.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductByIdResponseModelToJson(
        ProductByIdResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.product,
    };

ProductDetails _$ProductDetailsFromJson(Map<String, dynamic> json) =>
    ProductDetails(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      offer: (json['offer'] as num?)?.toDouble(),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      market: json['market'] == null
          ? null
          : Market.fromJson(json['market'] as Map<String, dynamic>),
      subCategory: json['subCategory'] == null
          ? null
          : Category.fromJson(json['subCategory'] as Map<String, dynamic>),
      favourite: json['favourite'] as bool?,
    );

Map<String, dynamic> _$ProductDetailsToJson(ProductDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'offer': instance.offer,
      'images': instance.images,
      'market': instance.market,
      'subCategory': instance.subCategory,
      'favourite': instance.favourite,
    };
