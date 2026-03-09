// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_data_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileDataResponseBody _$ProfileDataResponseBodyFromJson(
  Map<String, dynamic> json,
) => ProfileDataResponseBody(
  id: json['_id'] as String?,
  fullName: json['fullName'] as String?,
  email: json['email'] as String?,
  phoneNumber: (json['phoneNumber'] as num).toInt(),
  role: json['role'] as String?,
  shippingAddress: json['shippingAddress'] as String,
  wishlist: json['wishlist'] as String,
  isVerified: json['isVerified'] as bool?,
  imageUrl: json['imageUrl'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$ProfileDataResponseBodyToJson(
  ProfileDataResponseBody instance,
) => <String, dynamic>{
  '_id': instance.id,
  'fullName': instance.fullName,
  'email': instance.email,
  'phoneNumber': instance.phoneNumber,
  'role': instance.role,
  'shippingAddress': instance.shippingAddress,
  'wishlist': instance.wishlist,
  'isVerified': instance.isVerified,
  'imageUrl': instance.imageUrl,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};
