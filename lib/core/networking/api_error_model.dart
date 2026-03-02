import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiResponse {
  final bool? success;
  final ApiErrorModel? error; // هنا يتم استقبال كائن الـ error

  ApiResponse({this.success, this.error});

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);
}

@JsonSerializable()
class ApiErrorModel {
  final String? message;

  ApiErrorModel({this.message});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  // دالة المساعدة الآن أصبحت بسيطة جداً
  String getAllErrorsMessages() => message ?? "Unknown Error";
}