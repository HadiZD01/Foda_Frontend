import 'package:fodaapp/core/networking/api_error_model.dart';
import 'package:fodaapp/features/home/data/models/products_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_product_state.freezed.dart';

@freezed
class HomeProductState with _$HomeProductState {
  const factory HomeProductState.initial() = _Initial;
  const factory HomeProductState.homeProductLoading() = HomeProductLoading;
  const factory HomeProductState.homeProductSuccess(
    List<ProductsData?>? productsData,
  ) = HomeProductSuccess;
  const factory HomeProductState.homeProductError(ApiErrorModel apiErrorModel) =
      HomeProductError;

  const factory HomeProductState.homeProductCategorySuccess(
    List<ProductsData?>? data,
  ) = HomeProductCategorySuccess;

  const factory HomeProductState.homeProductCategoryError() =
      HomeProductCategoryError;
}
