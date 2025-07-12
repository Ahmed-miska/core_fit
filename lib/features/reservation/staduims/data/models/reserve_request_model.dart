import 'package:freezed_annotation/freezed_annotation.dart';
part 'reserve_request_model.g.dart';
@JsonSerializable()
class ReserveRequestModel {
  final int playgroundId;
  final String date;
  final List<String> slots;
  final String paymentMethod;

  ReserveRequestModel({ required this.playgroundId, required this.date, required this.slots, required this.paymentMethod});


  Map<String, dynamic> toJson() => _$ReserveRequestModelToJson(this);

}