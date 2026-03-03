// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupResponseBody _$SignupResponseBodyFromJson(Map<String, dynamic> json) =>
    SignupResponseBody(message: json['message'] as String?);

Map<String, dynamic> _$SignupResponseBodyToJson(SignupResponseBody instance) =>
    <String, dynamic>{'message': instance.message};

VerifiedEmailResponseBody _$VerifiedEmailResponseBodyFromJson(
  Map<String, dynamic> json,
) => VerifiedEmailResponseBody(
  message: json['message'] as String?,
  customer: json['customer'] == null
      ? null
      : CustomerData.fromJson(json['customer'] as Map<String, dynamic>),
  seller: json['seller'] as String?,
  accessToken: json['accessToken'] as String?,
);

Map<String, dynamic> _$VerifiedEmailResponseBodyToJson(
  VerifiedEmailResponseBody instance,
) => <String, dynamic>{
  'message': instance.message,
  'customer': instance.customer,
  'seller': instance.seller,
  'accessToken': instance.accessToken,
};

CustomerData _$CustomerDataFromJson(Map<String, dynamic> json) => CustomerData(
  id: json['id'] as String?,
  fullName: json['fullName'] as String?,
  email: json['email'] as String?,
  phoneNumber: json['phoneNumber'] as String?,
  imageUrl: json['imageUrl'] as String?,
);

Map<String, dynamic> _$CustomerDataToJson(CustomerData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'imageUrl': instance.imageUrl,
    };
