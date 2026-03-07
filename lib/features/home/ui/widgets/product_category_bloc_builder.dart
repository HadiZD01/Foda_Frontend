import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fodaapp/features/home/logic/cubit/home_product_state.dart';
import 'package:fodaapp/features/home/logic/cubit/home_products_cubit.dart';
import 'package:fodaapp/features/home/ui/widgets/cards_products_builder.dart';

class ProductCategoryBlocBuilder extends StatelessWidget {
  const ProductCategoryBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeProductsCubit, HomeProductState>(
      buildWhen: (previous, current) {
        return current is HomeProductCategorySuccess ||
            current is HomeProductCategoryError;
      },
      builder: (context, state) {
        return state.maybeWhen(
          homeProductCategorySuccess: (productsData) {
            return setUpSuccess(productsData);
          },
          homeProductCategoryError: () {
            return setUpError();
          },

          orElse: () {
            return SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setUpError() {
    return SizedBox.shrink();
  }

  Widget setUpSuccess(productsData) {
    return CardsProductsBuilder(productsData: productsData);
  }
}
