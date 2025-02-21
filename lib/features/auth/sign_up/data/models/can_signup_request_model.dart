import 'package:json_annotation/json_annotation.dart';

part 'can_signup_request_model.g.dart';

@JsonSerializable()

class CanSignupRequestModel {
  final String email;
  final String phone;

  CanSignupRequestModel({
    required this.email,
    required this.phone,
  });
  factory CanSignupRequestModel.fromJson(Map<String, dynamic> json) => _$CanSignupRequestModelFromJson(json);
  Map<String, dynamic> toJson() => _$CanSignupRequestModelToJson(this);


}
