// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_reqeust_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupReqeustBody _$SignupReqeustBodyFromJson(Map<String, dynamic> json) =>
    SignupReqeustBody(
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$SignupReqeustBodyToJson(SignupReqeustBody instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'password': instance.password,
    };

VerifiedEmailReqeustBody _$VerifiedEmailReqeustBodyFromJson(
  Map<String, dynamic> json,
) => VerifiedEmailReqeustBody(
  email: json['email'] as String?,
  verificationCode: (json['verificationCode'] as num?)?.toInt(),
);

Map<String, dynamic> _$VerifiedEmailReqeustBodyToJson(
  VerifiedEmailReqeustBody instance,
) => <String, dynamic>{
  'email': instance.email,
  'verificationCode': instance.verificationCode,
};
