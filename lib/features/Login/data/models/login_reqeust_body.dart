import 'package:json_annotation/json_annotation.dart';
part 'login_reqeust_body.g.dart';

@JsonSerializable()
class LoginReqeustBody {
  final String email;
  final String password;
  final String role;

  LoginReqeustBody({this.role="customer", required this.email, required this.password});

  Map<String, dynamic> toJson() => _$LoginReqeustBodyToJson(this);
}