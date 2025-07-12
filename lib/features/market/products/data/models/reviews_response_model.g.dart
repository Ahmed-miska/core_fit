// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewsResponseModel _$ReviewsResponseModelFromJson(
        Map<String, dynamic> json) =>
    ReviewsResponseModel(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReviewsResponseModelToJson(
        ReviewsResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      rates: (json['rates'] as List<dynamic>?)
          ?.map((e) => ReviewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      totalElements: (json['totalElements'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'rates': instance.rates,
      'totalPages': instance.totalPages,
      'pageSize': instance.pageSize,
      'totalElements': instance.totalElements,
    };

ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) => ReviewModel(
      id: (json['id'] as num?)?.toInt(),
      comment: json['comment'] as String?,
      rate: (json['rate'] as num?)?.toDouble(),
      createdAt: json['createdAt'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$ReviewModelToJson(ReviewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'comment': instance.comment,
      'rate': instance.rate,
      'createdAt': instance.createdAt,
      'username': instance.username,
    };
