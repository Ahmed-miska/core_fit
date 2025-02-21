import 'dart:io';

class SignUpRequestModel {
  final String username;
  final String email;
  final String phone;
  final String password;
  final String gender;
  final String birthDate;
  final String cityId;
  final String type;
  final String otp;
  final File? image;

  SignUpRequestModel({
    required this.username,
    required this.email,
    required this.phone,
    required this.password,
    required this.gender,
    required this.birthDate,
    required this.cityId,
    required this.type,
    required this.otp,
    required this.image,
  });

  Map<String, dynamic> toJson() {
    return {
      "username": username,
      "email": email,
      "phone": phone,
      "password": password,
      "gender": gender,
      "birthDate": birthDate,
      "cityId": cityId,
      "type": type,
      "otp": otp,
      "image": image,
    };
  }
}
