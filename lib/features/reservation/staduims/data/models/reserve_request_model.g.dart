// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reserve_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReserveRequestModel _$ReserveRequestModelFromJson(Map<String, dynamic> json) =>
    ReserveRequestModel(
      playgroundId: (json['playgroundId'] as num).toInt(),
      date: json['date'] as String,
      slots: (json['slots'] as List<dynamic>).map((e) => e as String).toList(),
      paymentMethod: json['paymentMethod'] as String,
    );

Map<String, dynamic> _$ReserveRequestModelToJson(
        ReserveRequestModel instance) =>
    <String, dynamic>{
      'playgroundId': instance.playgroundId,
      'date': instance.date,
      'slots': instance.slots,
      'paymentMethod': instance.paymentMethod,
    };
