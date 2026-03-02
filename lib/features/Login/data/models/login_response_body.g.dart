// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseBody _$LoginResponseBodyFromJson(Map<String, dynamic> json) =>
    LoginResponseBody(
      message: json['message'] as String?,
      seller: json['seller'] as String?,
      accessToken: json['accessToken'] as String?,
      customerData: CustomerData.fromJson(
        json['customer'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$LoginResponseBodyToJson(LoginResponseBody instance) =>
    <String, dynamic>{
      'message': instance.message,
      'customer': instance.customerData,
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
