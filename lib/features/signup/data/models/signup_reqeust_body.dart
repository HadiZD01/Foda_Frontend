import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_reqeust_body.g.dart';

@JsonSerializable()
class SignupReqeustBody {
  final String? fullName;
  final String? email;
  final String? password;

  SignupReqeustBody({
    required this.fullName,
    required this.email,
    required this.password,
  });
  Map<String, dynamic> toJson() => _$SignupReqeustBodyToJson(this);
}

@JsonSerializable()
class VerifiedEmailReqeustBody {
  final String? email;
  final String? verificationCode;

  VerifiedEmailReqeustBody({
    required this.email,
    required this.verificationCode,
  });
  Map<String, dynamic> toJson() => _$VerifiedEmailReqeustBodyToJson(this);
}
