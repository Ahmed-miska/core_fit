import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_details_response_model.g.dart';
@JsonSerializable()

class OrderDetailsResponseModel {
  String? message;
  OrderDetailsItem? data;

  OrderDetailsResponseModel({
    this.message,
    this.data,
  });

  factory OrderDetailsResponseModel.fromJson(Map<String, dynamic> json) => _$OrderDetailsResponseModelFromJson(json);
  
}

@JsonSerializable()

class OrderDetailsItem {
  int? id;
  int? userId;
  int? marketId;
  dynamic createdAt;
  String? marketName;
  String? clientName;
  String? clientAddress;
  String? clientPhone;
  num? latitude;
  num? longitude;
  String? additionalInfo;
  String? paymentMethod;
  String? status;
  num? totalPrice;
  List<OrderItem>? orderItems;

  OrderDetailsItem({
    this.id,
    this.userId,
    this.marketId,
    this.createdAt,
    this.marketName,
    this.clientName,
    this.clientAddress,
    this.clientPhone,
    this.latitude,
    this.longitude,
    this.additionalInfo,
    this.paymentMethod,
    this.status,
    this.totalPrice,
    this.orderItems,
  });

  factory OrderDetailsItem.fromJson(Map<String, dynamic> json) => _$OrderDetailsItemFromJson(json);
  
}
@JsonSerializable()

class OrderItem {
  int? id;
  String? name;
  String? description;
  num? price;
  num? offer;
  String? subCategoryName;
  List<String>? images;
  num? count;
  num? total;

  OrderItem({
    this.id,
    this.name,
    this.description,
    this.price,
    this.offer,
    this.subCategoryName,
    this.images,
    this.count,
    this.total,
  });

  factory OrderItem.fromJson(Map<String, dynamic> json) => _$OrderItemFromJson(json);

  
}
