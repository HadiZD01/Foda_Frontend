import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fodaapp/core/helpers/spacing.dart';
import 'package:fodaapp/core/theming/colors.dart';
import 'package:fodaapp/core/theming/styles.dart';
import 'package:fodaapp/features/home/logic/cubit/home_products_cubit.dart';
import 'package:fodaapp/features/home/ui/widgets/custom_bottom_nav_bar.dart';
import 'package:fodaapp/features/home/ui/widgets/category_products.dart';
import 'package:fodaapp/features/home/ui/widgets/featured_products.dart';
import 'package:fodaapp/features/home/ui/widgets/home_products_bloc_builder.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavBar(),
      appBar: AppBar(
        title: Text('FODA', style: TextStyles.font24blackbold),
        leading: IconButton(
          onPressed: () {
            context.read<HomeProductsCubit>().emitProductData();
          },
          icon: const Icon(Icons.menu),
        ),
        centerTitle: true,
        actions: [
          Stack(
            children: [
              Positioned(
                top: 5,
                right: 5,
                child: Container(
                  width: 20.w,
                  decoration: BoxDecoration(
                    color: ColorsApp.yellow,

                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '0',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.card_giftcard),
              ),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    'assets/images/Background.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                verticalSpace(20),
                CategoryProducts(),
                verticalSpace(20),
                FeaturedProducts(),
                verticalSpace(18),
                HomeProductsBlocBuilder(),
                // ProductCategoryBlocBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
