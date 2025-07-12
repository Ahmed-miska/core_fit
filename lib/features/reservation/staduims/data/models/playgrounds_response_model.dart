import 'package:json_annotation/json_annotation.dart';

part 'playgrounds_response_model.g.dart';
@JsonSerializable()
class PlaygroundsResponseModel {
  @JsonKey(name: "message")
  String? message;
  @JsonKey(name: "data")
  Data? data;

  PlaygroundsResponseModel({
    this.message,
    this.data,
  });

  factory PlaygroundsResponseModel.fromJson(Map<String, dynamic> json) => _$PlaygroundsResponseModelFromJson(json);

}

@JsonSerializable()
class Data {
  @JsonKey(name: "totalPages")
  int? totalPages;
  @JsonKey(name: "pageSize")
  int? pageSize;
  @JsonKey(name: "playgrounds")
  List<PlaygroundModel>? playgrounds;
  @JsonKey(name: "currentPage")
  int? currentPage;
  @JsonKey(name: "totalElements")
  int? totalElements;

  Data({
    this.totalPages,
    this.pageSize,
    this.playgrounds,
    this.currentPage,
    this.totalElements,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

}

@JsonSerializable()
class PlaygroundModel {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "teamMembers")
  int? teemMembers; //
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "city")
  dynamic city;
  @JsonKey(name: "address")
  String? address;//
  @JsonKey(name: "morningShiftStart")
  String? morningShiftStart;
  @JsonKey(name: "morningShiftEnd")
  String? morningShiftEnd;
  @JsonKey(name: "nightShiftStart")
  String? nightShiftStart;
  @JsonKey(name: "nightShiftEnd")
  String? nightShiftEnd;
  @JsonKey(name: "bookingPrice")
  num? bookingPrice;
  @JsonKey(name: "hasExtraPrice")
  bool? hasExtraPrice;
  @JsonKey(name: "extraNightPrice")
  num? extraNightPrice;
  @JsonKey(name: "images")
  List<String>? images;
  @JsonKey(name: "avgRate")
  num? avgRate;
  @JsonKey(name: "favourite")
  bool? favourite;
  @JsonKey(name: "opened")
  bool? opened;

  PlaygroundModel({
    this.id,
    this.name,
    this.description,
    this.city,
    this.address,
    this.morningShiftStart,
    this.morningShiftEnd,
    this.nightShiftStart,
    this.nightShiftEnd,
    this.bookingPrice,
    this.hasExtraPrice,
    this.extraNightPrice,
    this.images,
    this.avgRate,
    this.favourite,
    this.opened,
  });

  factory PlaygroundModel.fromJson(Map<String, dynamic> json) => _$PlaygroundModelFromJson(json);

}
