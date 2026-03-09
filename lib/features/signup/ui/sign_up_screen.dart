import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fodaapp/core/helpers/extensions.dart';
import 'package:fodaapp/core/helpers/spacing.dart';
import 'package:fodaapp/core/routing/routes.dart';
import 'package:fodaapp/core/theming/colors.dart';
import 'package:fodaapp/core/theming/styles.dart';
import 'package:fodaapp/features/Login/ui/widgets/app_button.dart';
import 'package:fodaapp/features/signup/logic/cubit/signup_cubit.dart';
import 'package:fodaapp/features/signup/ui/widgets/email_and_assword_sign_up.dart';
import 'package:fodaapp/features/signup/ui/widgets/sign_up_bloc_listner.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.WhiteBackground,
      appBar: AppBar(
        animateColor: false,
        surfaceTintColor: ColorsApp.WhiteBackground,
        backgroundColor: ColorsApp.WhiteBackground,
        foregroundColor: ColorsApp.WhiteBackground,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 35, color: ColorsApp.yellow),
          onPressed: () {
            context.pushReplacementNamed(Routes.loginscreen);
          },
        ),
        title: Text('Sign Up', style: TextStyles.font24blackbold),
        elevation: 0,
        // backgroundColor: ColorsApp.WhiteBackground,
        centerTitle: true,
        // foregroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(
            // vertical: 10.h,
            horizontal: 30.w,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(20),
                Center(
                  child: Image.asset(
                    'assets/images/yellow_line.png',
                    width: 70.w,
                  ),
                ),
                verticalSpace(30),
                Center(
                  child: Text(
                    'Create Your Account',
                    style: TextStyles.font36blackbold,
                    textAlign: TextAlign.center,
                  ),
                ),
                verticalSpace(8),
                Center(
                  child: Text(
                    "Join the world of refined fashion",
                    style: TextStyles.font14graymedium,
                  ),
                ),
                verticalSpace(20),
                EmailAndAsswordSignUp(),
                AppButton(
                  onPressed: () {
                    context.read<SignUpCubit>().emitSignUpState();
                  },
                  text: 'Sign Up',
                  styleText: TextStyles.font16whitemedium,
                ),
                verticalSpace(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already Have Account ",
                      style: TextStyles.font14GrayRegular,
                    ),
                    GestureDetector(
                      onTap: () {
                        context.pushNamed(Routes.loginscreen);
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyles.font16yellowbold,
                      ),
                    ),
                  ],
                ),
                verticalSpace(15),
                SignupBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
