// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetailsResponseModel _$OrderDetailsResponseModelFromJson(
        Map<String, dynamic> json) =>
    OrderDetailsResponseModel(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : OrderDetailsItem.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderDetailsResponseModelToJson(
        OrderDetailsResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

OrderDetailsItem _$OrderDetailsItemFromJson(Map<String, dynamic> json) =>
    OrderDetailsItem(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      marketId: (json['marketId'] as num?)?.toInt(),
      createdAt: json['createdAt'],
      marketName: json['marketName'] as String?,
      clientName: json['clientName'] as String?,
      clientAddress: json['clientAddress'] as String?,
      clientPhone: json['clientPhone'] as String?,
      latitude: json['latitude'] as num?,
      longitude: json['longitude'] as num?,
      additionalInfo: json['additionalInfo'] as String?,
      paymentMethod: json['paymentMethod'] as String?,
      status: json['status'] as String?,
      totalPrice: json['totalPrice'] as num?,
      orderItems: (json['orderItems'] as List<dynamic>?)
          ?.map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderDetailsItemToJson(OrderDetailsItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'marketId': instance.marketId,
      'createdAt': instance.createdAt,
      'marketName': instance.marketName,
      'clientName': instance.clientName,
      'clientAddress': instance.clientAddress,
      'clientPhone': instance.clientPhone,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'additionalInfo': instance.additionalInfo,
      'paymentMethod': instance.paymentMethod,
      'status': instance.status,
      'totalPrice': instance.totalPrice,
      'orderItems': instance.orderItems,
    };

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) => OrderItem(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: json['price'] as num?,
      offer: json['offer'] as num?,
      subCategoryName: json['subCategoryName'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      count: json['count'] as num?,
      total: json['total'] as num?,
    );

Map<String, dynamic> _$OrderItemToJson(OrderItem instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'offer': instance.offer,
      'subCategoryName': instance.subCategoryName,
      'images': instance.images,
      'count': instance.count,
      'total': instance.total,
    };
