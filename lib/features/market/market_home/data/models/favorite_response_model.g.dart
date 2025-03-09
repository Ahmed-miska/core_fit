// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavoritesResponseModel _$FavoritesResponseModelFromJson(
        Map<String, dynamic> json) =>
    FavoritesResponseModel(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FavoritesResponseModelToJson(
        FavoritesResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
