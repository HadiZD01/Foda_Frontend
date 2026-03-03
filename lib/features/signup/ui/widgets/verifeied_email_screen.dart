import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fodaapp/core/helpers/spacing.dart';
import 'package:fodaapp/core/theming/styles.dart';
import 'package:fodaapp/features/Login/ui/widgets/app_button.dart';
import 'package:fodaapp/features/Login/ui/widgets/text_Form_Filed.dart';
import 'package:fodaapp/features/signup/logic/cubit/signup_cubit.dart';

class VerifeiedEmail extends StatelessWidget {
  const VerifeiedEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(
            vertical: 10.h,
            horizontal: 30.w,
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Verified Email', style: TextStyles.font24blacksemibold),
                  verticalSpace(20),
                  Text(
                    'Enter 6-degit reciver in your email here',
                    style: TextStyles.font14graymedium,
                  ),
                  verticalSpace(36),
                  AppTextFormFiled(
                    controller: context
                        .read<SignUpCubit>().verificationCodeController,
                    hintText: '6-degits',
                    validator: (value) {
                      if (value == '' || value!.isEmpty) {
                        return '6-degits is required';
                      }
                    },
                  ),
                  verticalSpace(30),
                  AppButton(
                    onPressed: () {
                      context.read<SignUpCubit>().verificationCodeController;
                    },
                    text: 'Send',
                    styleText: TextStyles.font16yellowbold,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
