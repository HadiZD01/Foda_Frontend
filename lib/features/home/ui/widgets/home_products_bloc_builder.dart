import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fodaapp/features/home/logic/cubit/home_product_state.dart';
import 'package:fodaapp/features/home/logic/cubit/home_products_cubit.dart';
import 'package:fodaapp/features/home/ui/widgets/cards_products_builder.dart';
import 'package:fodaapp/features/home/ui/widgets/cards_shimmer_loading.dart';

class HomeProductsBlocBuilder extends StatelessWidget {
  const HomeProductsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeProductsCubit, HomeProductState>(
      buildWhen: (previous, current) =>
          current is HomeProductLoading ||
          current is HomeProductSuccess ||
          current is HomeProductError ||
          current is HomeProductCategorySuccess ||
          current is HomeProductCategoryError,
      builder: (context, state) {
        return state.maybeWhen(
          homeProductSuccess: (productsData) {
            return setUpSuccess(productsData);
          },
          homeProductError: (apiErrorModerl) {
            return setUpError();
          },
          homeProductLoading: () {
            return setUpLoading();
          },
          homeProductCategorySuccess: (productsData) {
            return setUpSuccess(productsData);
          },

          orElse: () {
            return SizedBox.shrink();
          },
        );
      },
    );
  }
}

Widget setUpError() {
  return SizedBox.shrink();
}

Widget setUpSuccess(productsData) {
  return CardsProductsBuilder(productsData: productsData);
}

Widget setUpLoading() {
  return CardsShimmerLoading();
}
