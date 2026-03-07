import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fodaapp/core/helpers/spacing.dart';
import 'package:shimmer/shimmer.dart';

class CardsShimmerLoading extends StatelessWidget {
  const CardsShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.w, // Match your app's actual spacing
        mainAxisSpacing: 16.h,
        childAspectRatio: 0.7, // Adjusted for better fit
      ),
      itemCount: 6, // Show a few more to fill the screen
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align to start like the real card
            children: [
              // 1. Image Placeholder
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      20.r,
                    ), // Match CardProductsItem
                  ),
                ),
              ),
              verticalSpace(8),
              // 2. Name Placeholder
              Container(
                width: 120.w,
                height: 14.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.r),
                ),
              ),
              verticalSpace(6),
              // 3. Description Placeholder
              Container(
                width: 80.w,
                height: 12.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.r),
                ),
              ),
              verticalSpace(8),
            ],
          ),
        );
      },
    );
  }
}
