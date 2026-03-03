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
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, size: 35, color: ColorsApp.yellow),
        title: Text('Sign Up'),
        elevation: 0,
        backgroundColor: Colors.white,
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
                Center(
                  child: Image.asset(
                    'assets/images/yellow_line.png',
                    width: 70.w,
                  ),
                ),
                verticalSpace(14),
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
                  styleText: TextStyles.font16yellowbold,
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
