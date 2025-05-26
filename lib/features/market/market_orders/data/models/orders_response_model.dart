import 'package:easy_localization/easy_localization.dart';
import 'package:json_annotation/json_annotation.dart';

part 'orders_response_model.g.dart';

@JsonSerializable()
class OrdersResponseModel {
  final List<OrderModel> data;
  final String? message;

  OrdersResponseModel({required this.data, this.message});

  factory OrdersResponseModel.fromJson(Map<String, dynamic> json) => _$OrdersResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$OrdersResponseModelToJson(this);
}

@JsonSerializable()
class OrderModel {
  final int id;
  final int userId;
  final int marketId;
  final String? createdAt;
  final String marketName;
  final String clientAddress;
  final String status;
  final double totalPrice;

  OrderModel({
    required this.id,
    required this.userId,
    required this.marketId,
    this.createdAt,
    required this.marketName,
    required this.clientAddress,
    required this.status,
    required this.totalPrice,
  });
  String get formattedTime {
    if (createdAt == null) return '';
    try {
      final dateTime = DateTime.parse(createdAt!).add(Duration(hours: 3));
      return DateFormat.jm().format(dateTime); // e.g., "11:07 PM"
    } catch (e) {
      return '';
    }
  }

  factory OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);
  Map<String, dynamic> toJson() => _$OrderModelToJson(this);
}

@JsonSerializable()
class OrderProductModel {
  final int id;
  final String name;
  final String image;
  final double price;
  final int quantity;

  OrderProductModel({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.quantity,
  });

  factory OrderProductModel.fromJson(Map<String, dynamic> json) => _$OrderProductModelFromJson(json);
  Map<String, dynamic> toJson() => _$OrderProductModelToJson(this);
}
