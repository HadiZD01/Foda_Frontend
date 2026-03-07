import 'package:fodaapp/core/networking/api_error_handler.dart';
import 'package:fodaapp/core/networking/api_result.dart';
import 'package:fodaapp/core/networking/api_service.dart';
import 'package:fodaapp/features/home/data/models/products_response_model.dart';

class HomeProductsRepos {
  final ApiService _apiService;
  HomeProductsRepos(this._apiService);

  Future<ApiResult<ProductsResponseModel>> getProducts() async {
    try {
      final response = await _apiService.getProducts();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
