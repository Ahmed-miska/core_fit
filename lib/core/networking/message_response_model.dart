import 'package:json_annotation/json_annotation.dart';

part 'message_response_model.g.dart';
@JsonSerializable()
class MessageResponseModel {
  String? message;

  MessageResponseModel({this.message});

  factory MessageResponseModel.fromJson(Map<String, dynamic> json) => _$MessageResponseModelFromJson(json);
}