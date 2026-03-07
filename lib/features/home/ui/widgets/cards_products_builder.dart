import 'package:flutter/material.dart';
import 'package:fodaapp/features/home/data/models/products_response_model.dart';
import 'package:fodaapp/features/home/ui/widgets/card_products_item.dart';

class CardsProductsBuilder extends StatelessWidget {
  final List<ProductsData?>? productsData;
  const CardsProductsBuilder({super.key, required this.productsData});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true, // مهم جداً إذا كانت داخل SingleChildScrollView
      physics:
          const NeverScrollableScrollPhysics(), // لتعطيل التمرير الخاص بها إذا كانت داخل سكرول خارجي
      padding: const EdgeInsets.all(10),
      // التحكم في شكل الشبكة (Grid)
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // عدد العناصر في السطر الواحد
        crossAxisSpacing: 10, // المسافة الأفقية بين الكروت
        mainAxisSpacing: 10, // المسافة الرأسية بين السطور
        childAspectRatio: 0.65,
        // التحكم في نسبة (العرض إلى الطول) للكارد
      ),
      itemCount: productsData?.length, // عدد العناصر الإجمالي
      itemBuilder: (context, index) {
        // children: [
        return CardProductsItem(
          productsData: productsData?[index],
          index: index,
        );
      },
    );
  }
}
