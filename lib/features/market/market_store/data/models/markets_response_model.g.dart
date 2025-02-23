// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'markets_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketsResponseModel _$MarketsResponseModelFromJson(
        Map<String, dynamic> json) =>
    MarketsResponseModel(
      markets: (json['content'] as List<dynamic>?)
          ?.map((e) => Market.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MarketsResponseModelToJson(
        MarketsResponseModel instance) =>
    <String, dynamic>{
      'content': instance.markets,
      'totalPages': instance.totalPages,
    };

Market _$MarketFromJson(Map<String, dynamic> json) => Market(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
      address: json['address'] as String?,
      imageUrl: json['imageUrl'] as String?,
      opened: json['opened'] as bool?,
    );

Map<String, dynamic> _$MarketToJson(Market instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'category': instance.category,
      'lat': instance.lat,
      'lng': instance.lng,
      'address': instance.address,
      'imageUrl': instance.imageUrl,
      'opened': instance.opened,
    };
