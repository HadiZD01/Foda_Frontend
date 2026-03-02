import 'package:dio/dio.dart';

import 'api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionError:
          return ApiErrorModel(message: "Connection to server failed");
        case DioExceptionType.cancel:
          return ApiErrorModel(message: "Request to the server was cancelled");
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(message: "Connection timeout with the server");
        case DioExceptionType.unknown:
          return ApiErrorModel(
            message:
                "Connection to the server failed due to internet connection",
          );
        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(
            message: "Receive timeout in connection with the server",
          );
        case DioExceptionType.badResponse:
          return _handleError(error.response?.data);
        case DioExceptionType.sendTimeout:
          return ApiErrorModel(
            message: "Send timeout in connection with the server",
          );
        default:
          return ApiErrorModel(message: "Something went wrong");
      }
    } else {
      return ApiErrorModel(message: "Unknown error occurred");
    }
  }
}

ApiErrorModel _handleError(dynamic data) {
  // 1. التأكد أولاً أن البيانات القادمة هي Map (JSON) وليست نصاً عادياً أو HTML
  if (data is Map<String, dynamic>) {
    
    // 2. إذا كان الـ JSON يحتوي على مفتاح 'error' وهو بدوره Map (كما في مثالك)
    if (data['error'] is Map<String, dynamic>) {
      return ApiErrorModel.fromJson(data['error']);
    }

    // 3. إذا كان الـ JSON يحتوي على 'message' مباشرة في المستوى الأول
    if (data.containsKey('message')) {
      return ApiErrorModel(message: data['message'].toString());
    }
  }

  // 4. حالة احتياطية إذا كان شكل الرد غير متوقع تماماً
  return ApiErrorModel(message:"Uknow Error");
}
