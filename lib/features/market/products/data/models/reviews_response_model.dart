
import 'package:json_annotation/json_annotation.dart';

part 'reviews_response_model.g.dart';

@JsonSerializable()
class ReviewsResponseModel {
  @JsonKey(name: "message")
  String? message;
  @JsonKey(name: "data")
  Data? data;

  ReviewsResponseModel({
    this.message,
    this.data,
  });

  factory ReviewsResponseModel.fromJson(Map<String, dynamic> json) => _$ReviewsResponseModelFromJson(json);

}

@JsonSerializable()
class Data {
  @JsonKey(name: "rates")
  List<ReviewModel>? rates;
  @JsonKey(name: "totalPages")
  int? totalPages;
  @JsonKey(name: "pageSize")
  int? pageSize;
  @JsonKey(name: "totalElements")
  int? totalElements;

  Data({
    this.rates,
    this.totalPages,
    this.pageSize,
    this.totalElements,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

}

@JsonSerializable()
class ReviewModel {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "comment")
  String? comment;
  @JsonKey(name: "rate")
  double? rate;
  @JsonKey(name: "createdAt")
  String? createdAt;
  @JsonKey(name: "username")
  String? username;

  ReviewModel({
    this.id,
    this.comment,
    this.rate,
    this.createdAt,
    this.username,
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json) => _$ReviewModelFromJson(json);

}
