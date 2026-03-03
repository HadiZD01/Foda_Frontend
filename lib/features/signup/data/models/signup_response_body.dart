import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_response_body.g.dart';


@JsonSerializable()
class SignupResponseBody {
  final String? message;

  SignupResponseBody({required this.message});
  factory SignupResponseBody.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseBodyFromJson(json);
}

@JsonSerializable()
class VerifiedEmailResponseBody {
  final String? message;
  final CustomerData? customer;
  final String? seller;
  final String? accessToken;

  VerifiedEmailResponseBody({
    required this.message,
    required this.customer,
    required this.seller,
    required this.accessToken,
  });
  factory VerifiedEmailResponseBody.fromJson(Map<String, dynamic> json) =>
      _$VerifiedEmailResponseBodyFromJson(json);
}

@JsonSerializable()
class CustomerData {
  final String? id;
  final String? fullName;
  final String? email;
  final String? phoneNumber;
  final String? imageUrl;

  CustomerData({
    required this.id,
    required this.fullName,
    required this.email,
    required this.phoneNumber,
    required this.imageUrl,
  });
  factory CustomerData.fromJson(Map<String, dynamic> json) =>
      _$CustomerDataFromJson(json);
}
