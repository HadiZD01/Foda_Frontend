import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fodaapp/core/helpers/spacing.dart';
import 'package:fodaapp/core/theming/styles.dart';
import 'package:fodaapp/features/home/logic/cubit/home_products_cubit.dart';

class CategoryProducts extends StatefulWidget {
  const CategoryProducts({super.key});

  @override
  State<CategoryProducts> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CategoryProducts> {
  String currentSelect = 'All';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildCategoryButton('All', currentSelect == 'All', () {
              setState(() {
                currentSelect = 'All';
              });
              context.read<HomeProductsCubit>().getProductCategory(
                category: 'All',
              );
            }),
            horizontalSpace(10),

            _buildCategoryButton('Women', currentSelect == 'Women', () {
              setState(() {
                currentSelect = 'Women';
              });
              context.read<HomeProductsCubit>().getProductCategory(
                category: 'Women',
              );
            }),
            horizontalSpace(10),
            _buildCategoryButton('Men', currentSelect == 'Men', () {
              setState(() {
                currentSelect = 'Men';
              });
              context.read<HomeProductsCubit>().getProductCategory(
                category: 'Men',
              );
            }),
            horizontalSpace(10),
            _buildCategoryButton('Kids', currentSelect == 'Kids', () {
              setState(() {
                currentSelect = 'Kids';
              });
              context.read<HomeProductsCubit>().getProductCategory(
                category: 'Kids',
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButton(
    String title,
    bool isSelected,
    VoidCallback onpressed,
  ) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: isSelected ? Colors.white : Colors.grey[200],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
      onPressed: onpressed,
      child: Text(
        title,
        style: isSelected
            ? TextStyles.font14blackmedium
            : TextStyles.font14graymedium,
      ),
    );
  }
}
