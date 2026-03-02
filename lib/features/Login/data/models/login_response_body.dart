import 'package:json_annotation/json_annotation.dart';
part 'login_response_body.g.dart';

@JsonSerializable()
class LoginResponseBody {
  final String? message;
  @JsonKey(name: 'customer')
  CustomerData customerData;
  final String? seller;
  final String? accessToken;
  LoginResponseBody({
    required this.message,
    this.seller,
    this.accessToken,
    required this.customerData,
  });

  factory LoginResponseBody.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseBodyFromJson(json);
}
@JsonSerializable()

class CustomerData {
  final String? id;
  final String? fullName;
  final String? email;
  final String? phoneNumber;
  final String? imageUrl;

  CustomerData({
    this.id,
    this.fullName,
    this.email,
    this.phoneNumber,
    this.imageUrl,
  });

  factory CustomerData.fromJson(Map<String, dynamic> json) =>
      _$CustomerDataFromJson(json);
}
