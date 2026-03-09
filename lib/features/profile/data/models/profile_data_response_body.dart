import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_data_response_body.g.dart';

@JsonSerializable()
class ProfileDataResponseBody {
  @JsonKey(name: "_id")
  final String? id;
  final String? fullName;
  final String? email;
  final int phoneNumber;
  final String? role;

  final String shippingAddress;
  final String wishlist;
  final bool? isVerified;
  final String? imageUrl;
  final DateTime createdAt;
  final DateTime updatedAt;

  ProfileDataResponseBody({
    required this.id,
    required this.fullName,
    required this.email,
    required this.phoneNumber,
    required this.role,
    required this.shippingAddress,
    required this.wishlist,
    required this.isVerified,
    required this.imageUrl,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ProfileDataResponseBody.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataResponseBodyFromJson(json);
}
