import 'package:fodaapp/core/networking/api_error_handler.dart';
import 'package:fodaapp/core/networking/api_result.dart';
import 'package:fodaapp/core/networking/api_service.dart';
import 'package:fodaapp/features/signup/data/models/signup_reqeust_body.dart';
import 'package:fodaapp/features/signup/data/models/signup_response_body.dart';

class SignUpRepo {
  ApiService _apiService;
  SignUpRepo(this._apiService);

  Future<ApiResult<SignupResponseBody>> signUp(
    SignupReqeustBody signUpReqeustBody,
  ) async {
    try {
      final response = await _apiService.signup(signUpReqeustBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}

class VerifiedEmailRepo {
  ApiService _apiService;
  VerifiedEmailRepo(this._apiService);

  Future<ApiResult<VerifiedEmailResponseBody>> verifiedEmail(
    VerifiedEmailReqeustBody verifiedEmailReqeustBody,
  ) async {
    try {
      final response = await _apiService.verfiedEmail(verifiedEmailReqeustBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
