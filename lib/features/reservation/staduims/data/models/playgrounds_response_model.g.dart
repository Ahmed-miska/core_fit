// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playgrounds_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaygroundsResponseModel _$PlaygroundsResponseModelFromJson(
        Map<String, dynamic> json) =>
    PlaygroundsResponseModel(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlaygroundsResponseModelToJson(
        PlaygroundsResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      totalPages: (json['totalPages'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      playgrounds: (json['playgrounds'] as List<dynamic>?)
          ?.map((e) => PlaygroundModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentPage: (json['currentPage'] as num?)?.toInt(),
      totalElements: (json['totalElements'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'totalPages': instance.totalPages,
      'pageSize': instance.pageSize,
      'playgrounds': instance.playgrounds,
      'currentPage': instance.currentPage,
      'totalElements': instance.totalElements,
    };

PlaygroundModel _$PlaygroundModelFromJson(Map<String, dynamic> json) =>
    PlaygroundModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      city: json['city'],
      address: json['address'] as String?,
      morningShiftStart: json['morningShiftStart'] as String?,
      morningShiftEnd: json['morningShiftEnd'] as String?,
      nightShiftStart: json['nightShiftStart'] as String?,
      nightShiftEnd: json['nightShiftEnd'] as String?,
      bookingPrice: json['bookingPrice'] as num?,
      hasExtraPrice: json['hasExtraPrice'] as bool?,
      extraNightPrice: json['extraNightPrice'] as num?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      avgRate: json['avgRate'] as num?,
      favourite: json['favourite'] as bool?,
      opened: json['opened'] as bool?,
    )..teemMembers = (json['teemMembers'] as num?)?.toInt();

Map<String, dynamic> _$PlaygroundModelToJson(PlaygroundModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'teemMembers': instance.teemMembers,
      'name': instance.name,
      'description': instance.description,
      'city': instance.city,
      'address': instance.address,
      'morningShiftStart': instance.morningShiftStart,
      'morningShiftEnd': instance.morningShiftEnd,
      'nightShiftStart': instance.nightShiftStart,
      'nightShiftEnd': instance.nightShiftEnd,
      'bookingPrice': instance.bookingPrice,
      'hasExtraPrice': instance.hasExtraPrice,
      'extraNightPrice': instance.extraNightPrice,
      'images': instance.images,
      'avgRate': instance.avgRate,
      'favourite': instance.favourite,
      'opened': instance.opened,
    };
