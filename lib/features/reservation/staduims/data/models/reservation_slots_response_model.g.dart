// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_slots_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReservationSlotsResponseModel _$ReservationSlotsResponseModelFromJson(
        Map<String, dynamic> json) =>
    ReservationSlotsResponseModel(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ReservationSlotsResponseModelToJson(
        ReservationSlotsResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
