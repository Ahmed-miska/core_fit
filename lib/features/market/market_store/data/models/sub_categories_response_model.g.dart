// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_categories_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubCategoriesResponseModel _$SubCategoriesResponseModelFromJson(
        Map<String, dynamic> json) =>
    SubCategoriesResponseModel(
      message: json['message'] as String?,
      subCategories: (json['data'] as List<dynamic>?)
          ?.map((e) => SubCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubCategoriesResponseModelToJson(
        SubCategoriesResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.subCategories,
    };

SubCategory _$SubCategoryFromJson(Map<String, dynamic> json) => SubCategory(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$SubCategoryToJson(SubCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
