import 'package:json_annotation/json_annotation.dart';
part 'reservation_slots_response_model.g.dart';

@JsonSerializable()
class ReservationSlotsResponseModel {
  @JsonKey(name: "message")
  String? message;
  @JsonKey(name: "data")
  List<String>? data;

  ReservationSlotsResponseModel({
    this.message,
    this.data,
  });

  factory ReservationSlotsResponseModel.fromJson(Map<String, dynamic> json) => _$ReservationSlotsResponseModelFromJson(json);

}
