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
          : Product.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductByIdResponseModelToJson(
        ProductByIdResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.product,
    };
