import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fodaapp/core/networking/api_result.dart';
import 'package:fodaapp/features/home/data/models/products_response_model.dart';
import 'package:fodaapp/features/home/data/repos/products_repos.dart';
import 'package:fodaapp/features/home/logic/cubit/home_product_state.dart';

class HomeProductsCubit extends Cubit<HomeProductState> {
  HomeProductsRepos homeProductsRepos;
  List<ProductsData?>? productsData = [];
  HomeProductsCubit(this.homeProductsRepos) : super(HomeProductState.initial());

  void emitProductData() async {
    emit(HomeProductState.homeProductLoading());
    final response = await homeProductsRepos.getProducts();
    print(response);
    response.when(
      success: (productsResponseModel) {
        productsData = productsResponseModel.productsData ?? [];
        getProductCategory(category: productsData?.first?.category ?? 'All');
        emit(HomeProductState.homeProductSuccess(productsData));
      },
      failure: (apiErrorModel) {
        emit(HomeProductState.homeProductError(apiErrorModel));
      },
    );
  }

  void getProductCategory({required category}) async {
    if (category == 'All') {
      print('products data for all category is ${productsData}');
      emit(HomeProductState.homeProductSuccess(productsData));
    } else {
      List<ProductsData?>? productsCategory = productsData?.where((product) {
        return product?.category == category;
      }).toList();
      if (productsCategory != null || productsCategory!.isNotEmpty) {
        print('productcategory is  ${productsCategory.length}');
        emit(HomeProductState.homeProductCategorySuccess(productsCategory));
      } else {
        emit(HomeProductState.homeProductCategoryError());
      }
    }
  }
}
