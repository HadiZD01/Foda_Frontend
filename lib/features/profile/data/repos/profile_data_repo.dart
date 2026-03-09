import 'package:fodaapp/core/networking/api_error_handler.dart';
import 'package:fodaapp/core/networking/api_result.dart';
import 'package:fodaapp/core/networking/api_service.dart';
import 'package:fodaapp/features/profile/data/models/profile_data_response_body.dart';

class ProfileDataRepo {
  ApiService _apiService;
  ProfileDataRepo(this._apiService);

  Future<ApiResult<ProfileDataResponseBody>> getProfile() async {
    try {
      final response = await _apiService.getProfile();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
