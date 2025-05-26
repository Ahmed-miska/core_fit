// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrdersResponseModel _$OrdersResponseModelFromJson(Map<String, dynamic> json) =>
    OrdersResponseModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => OrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$OrdersResponseModelToJson(
        OrdersResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => OrderModel(
      id: (json['id'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      marketId: (json['marketId'] as num).toInt(),
      createdAt: json['createdAt'] as String?,
      marketName: json['marketName'] as String,
      clientAddress: json['clientAddress'] as String,
      status: json['status'] as String,
      totalPrice: (json['totalPrice'] as num).toDouble(),
    );

Map<String, dynamic> _$OrderModelToJson(OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'marketId': instance.marketId,
      'createdAt': instance.createdAt,
      'marketName': instance.marketName,
      'clientAddress': instance.clientAddress,
      'status': instance.status,
      'totalPrice': instance.totalPrice,
    };

OrderProductModel _$OrderProductModelFromJson(Map<String, dynamic> json) =>
    OrderProductModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String,
      price: (json['price'] as num).toDouble(),
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$OrderProductModelToJson(OrderProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'price': instance.price,
      'quantity': instance.quantity,
    };
