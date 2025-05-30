import 'package:json_annotation/json_annotation.dart';
part 'login_request_body.g.dart';

@JsonSerializable()
class LoginRequestBody {
  final String email;
  final String password;
  final String type = 'GENERAL';

  LoginRequestBody({required this.email, required this.password, type = 'GENERAL'});

  Map<String, dynamic> toJson() => _$LoginRequestBodyToJson(this);
}
