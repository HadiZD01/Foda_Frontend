import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fodaapp/core/helpers/spacing.dart';
import 'package:fodaapp/core/theming/colors.dart';
import 'package:fodaapp/core/theming/styles.dart';
import 'package:fodaapp/features/Login/ui/widgets/app_button.dart';
import 'package:fodaapp/features/signup/ui/widgets/sign_up_bloc_listner.dart';
import 'package:pinput/pinput.dart';
import 'package:fodaapp/features/signup/logic/cubit/signup_cubit.dart';

class VerifeiedEmail extends StatelessWidget {
  const VerifeiedEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 400.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorsApp.WhiteBackground,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(45.r),
                    bottomRight: Radius.circular(45.r),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40.r,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.mail,
                        color: ColorsApp.yellow,
                        size: 40.r,
                      ),
                    ),
                    verticalSpace(20),
                    Text(
                      'Verify Your Account',
                      style: TextStyles.font32blackbold,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  children: [
                    verticalSpace(20),
                    Text(
                      'A 4-digit code was sent to your\n email. Please enter it below to verify\nyour account',
                      style: TextStyles.font14graymedium,
                      textAlign: TextAlign.center,
                    ),
                    verticalSpace(36),
                    Pinput(
                      length: 4, // تم التغيير لـ 4 أرقام
                      controller: context
                          .read<SignUpCubit>()
                          .verificationCodeController,
                      defaultPinTheme: PinTheme(
                        width: 60.w, // زدت العرض قليلاً لأن المسافة أصبحت أكبر
                        height: 65.h,
                        textStyle: TextStyles.font16yellowbold.copyWith(
                          fontSize: 22,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(color: Colors.grey.shade300),
                          color: Colors.grey.shade50,
                        ),
                      ),
                      focusedPinTheme: PinTheme(
                        width: 62.w,
                        height: 68.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(color: ColorsApp.yellow, width: 2),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: ColorsApp.yellow.withOpacity(0.1),
                              blurRadius: 8,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                      ),
                      submittedPinTheme: PinTheme(
                        width: 60.w,
                        height: 65.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(color: ColorsApp.yellow),
                          color: Colors.white,
                        ),
                      ),
                      // لإظهار لوحة أرقام فقط
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.length < 4) {
                          return 'Please enter the 4-digit code';
                        }
                        return null;
                      },
                      onCompleted: (pin) {
                        context.read<SignUpCubit>().emitVerifiedEmail();
                      },
                    ),
                    verticalSpace(30),
                    AppButton(
                      onPressed: () {
                        context.read<SignUpCubit>().emitVerifiedEmail();
                      },
                      text: 'Verify',
                      styleText: TextStyles.font16yellowbold,
                    ),
                    verticalSpace(24),
                    Text(
                      'Didn\'t receive the code?',
                      style: TextStyles.font14GrayRegular,
                    ),
                    TextButton(
                      onPressed: () {
                        // هنا ربما تحتاج ميثود resendCode بدلاً من نفس ميثود التفعيل
                        context.read<SignUpCubit>().emitVerifiedEmail();
                      },
                      child: Text(
                        'Resend Code',
                        style: TextStyles.font16yellowbold,
                      ),
                    ),
                    verticalSpace(
                      20,
                    ), // مسافة إضافية في الأسفل لضمان راحة التمرير
                  ],
                ),
              ),
              SignupBlocListener(),
            ],
          ),
        ),
      ),
    );
  }
}
