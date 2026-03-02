import 'package:fodaapp/core/networking/api_error_handler.dart';
import 'package:fodaapp/core/networking/api_result.dart';
import 'package:fodaapp/core/networking/api_service.dart';
import 'package:fodaapp/features/Login/data/models/login_reqeust_body.dart';
import 'package:fodaapp/features/Login/data/models/login_response_body.dart';

class LoginRepo {
  final ApiService _apiService;
  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponseBody>> login(
    LoginReqeustBody loginRequestBody,
  ) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
