import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fodaapp/core/theming/colors.dart';
import 'package:fodaapp/core/theming/styles.dart';

class AppButton extends StatelessWidget {
  void Function()? onPressed;
  String text;
  TextStyle styleText;
  Color? color;
  AppButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.styleText,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
        backgroundColor: WidgetStateProperty.all<Color>(
          color ?? ColorsApp.yellow,
        ),
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(vertical: 12.w, horizontal: 14.h),
        ),
        fixedSize: WidgetStateProperty.all<Size>(Size(double.maxFinite, 50.h)),
      ),
      onPressed: onPressed,
      child: Text(text, style: styleText),
    );
  }
}
