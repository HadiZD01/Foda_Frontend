import 'package:flutter/material.dart';
import 'package:fodaapp/core/helpers/spacing.dart';
import 'package:fodaapp/core/theming/styles.dart';
import 'package:fodaapp/features/home/data/models/products_response_model.dart';

class CardProductsItem extends StatelessWidget {
  final ProductsData? productsData;
  final int index;

  const CardProductsItem({
    super.key,
    required this.productsData,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network(
                productsData?.images?[0]?.url ?? '',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          verticalSpace(8),
          Text(productsData?.name ?? '', style: TextStyles.font14DarkblueBold),
          Text(
            productsData?.description ?? '',
            style: TextStyles.font12GrayMedium,
          ),
        ],
      ),
    );
  }
}
