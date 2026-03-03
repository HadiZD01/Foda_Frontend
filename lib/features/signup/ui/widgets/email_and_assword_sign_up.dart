import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fodaapp/core/helpers/app_regex.dart';
import 'package:fodaapp/core/helpers/extensions.dart';
import 'package:fodaapp/core/helpers/spacing.dart';
import 'package:fodaapp/core/routing/routes.dart';
import 'package:fodaapp/core/theming/styles.dart';
import 'package:fodaapp/core/widgets/app_text_form_filed.dart';
import 'package:fodaapp/features/Login/ui/widgets/app_button.dart';
import 'package:fodaapp/features/Login/ui/widgets/password_validations.dart';
import 'package:fodaapp/features/signup/logic/cubit/signup_cubit.dart';

class EmailAndAsswordSignUp extends StatefulWidget {
  const EmailAndAsswordSignUp({super.key});

  @override
  State<EmailAndAsswordSignUp> createState() => _EmailAndAsswordSignUpState();
}

class _EmailAndAsswordSignUpState extends State<EmailAndAsswordSignUp> {
  bool isPasswordObscureText = true;
  bool isPasswordConfirmationObscureText = true;
  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasDigit = false;
  bool hasMinLength = false;
  bool hasSpecialChar = false;

  late TextEditingController passwordController;

  void initState() {
    super.initState();
    passwordController = context.read<SignUpCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasDigit = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
        hasSpecialChar = AppRegex.hasSpecialCharacter(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Full Name',
          style: TextStyles.font14blackmedium,
          textAlign: TextAlign.center,
        ),
        verticalSpace(8),

        AppTextFormFiled(
          controller: context.read<SignUpCubit>().fullNameController,
          hintText: 'John Cena',
          validator: (value) {
            if (value == '' ||
                value!.isEmpty ||
                !AppRegex.isEmailValid(value)) {
              return 'Email is required';
            }
          },
        ),
        verticalSpace(8),
        Text(
          'Email Address',
          style: TextStyles.font14blackmedium,
          textAlign: TextAlign.center,
        ),
        verticalSpace(8),

        AppTextFormFiled(
          controller: context.read<SignUpCubit>().emailController,
          hintText: 'name@example.com',
          validator: (value) {
            if (value == '' ||
                value!.isEmpty ||
                !AppRegex.isEmailValid(value)) {
              return 'Email is required';
            }
          },
        ),
        verticalSpace(8),
        Text(
          'Password',
          style: TextStyles.font14blackmedium,
          textAlign: TextAlign.center,
        ),
        verticalSpace(8),
        AppTextFormFiled(
          controller: context.read<SignUpCubit>().passwordController,
          hintText: '••••••••',
          obscureText: isPasswordObscureText,
          suffixIcon: GestureDetector(
            onTap: () => {
              setState(() {
                isPasswordObscureText = !isPasswordObscureText;
              }),
            },
            child: Icon(
              isPasswordObscureText ? Icons.visibility_off : Icons.visibility,
            ),
          ),
          validator: (value) {
            if (value == '' || value!.isEmpty) {
              return 'Password is required';
            }
          },
        ),

        verticalSpace(8),
        Text(
          'Confirmation Password',
          style: TextStyles.font14blackmedium,
          textAlign: TextAlign.center,
        ),
        verticalSpace(8),
        AppTextFormFiled(
          controller: context
              .read<SignUpCubit>()
              .passwordConfirmationController,
          hintText: '••••••••',
          obscureText: isPasswordConfirmationObscureText,
          suffixIcon: GestureDetector(
            onTap: () => {
              setState(() {
                isPasswordConfirmationObscureText =
                    !isPasswordConfirmationObscureText;
              }),
            },
            child: Icon(
              isPasswordConfirmationObscureText
                  ? Icons.visibility_off
                  : Icons.visibility,
            ),
          ),
          validator: (value) {
            if (value == '' || value!.isEmpty) {
              return 'Password is required';
            }
          },
        ),

        verticalSpace(8),
        PasswordValidations(
          hasLowercase: hasLowercase,
          hasUppercase: hasUppercase,
          hasDigit: hasDigit,
          hasMinLength: hasMinLength,
          hasSpecialChar: hasSpecialChar,
        ),
        verticalSpace(24),
      ],
    );
  }
}
