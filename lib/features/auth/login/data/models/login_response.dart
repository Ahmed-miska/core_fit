import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  String? message;
  Data? data;

  LoginResponse({this.message, this.data});

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);
}

@JsonSerializable()
class Data {
  String? token;
  User? user;

  Data({this.token, this.user});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@JsonSerializable()
class User {
  int? id;
  String? username;
  String? email;
  String? phone;
  String? birthDate;
  String? governorate;
  String? city;
  String? gender;

  User({this.id, this.username, this.email, this.phone, this.birthDate, this.governorate, this.city, this.gender});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
