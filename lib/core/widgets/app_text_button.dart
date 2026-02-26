import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fodaapp/core/theming/colors.dart';

class AppTextButton extends StatelessWidget {
  final double? borderradius;
  final Color? backgroundColor;
  final double? verticalpadding;
  final double? horizontalpadding;
  final String buttontext;
  final VoidCallback? onpressed;
  final double? buttonwidth;
  final double? buttonheight;
  final TextStyle? textstyle;

  const AppTextButton({
    super.key,
    this.borderradius,
    this.backgroundColor,
    this.verticalpadding,
    this.horizontalpadding,
    required this.buttontext,
    this.onpressed,
    this.buttonwidth,
    this.textstyle,
    this.buttonheight,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpressed,
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderradius ?? 16),
          ),
        ),
        backgroundColor: WidgetStateProperty.all<Color>(
          backgroundColor ?? ColorsApp.mainblue,
        ),
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(
            vertical: verticalpadding?.w ?? 12.w,
            horizontal: horizontalpadding?.h ?? 14.h,
          ),
        ),
        fixedSize: WidgetStateProperty.all<Size>(
          Size(buttonwidth?.h ?? double.maxFinite, buttonheight?.h ?? 50.h),
        ),
      ),
      child: Text(buttontext, style: textstyle),
    );
  }
}
