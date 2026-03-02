import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fodaapp/core/helpers/app_regex.dart';
import 'package:fodaapp/core/helpers/spacing.dart';
import 'package:fodaapp/core/theming/styles.dart';
import 'package:fodaapp/core/widgets/app_text_form_filed.dart';
import 'package:fodaapp/features/Login/logic/cubit/login_cubit.dart';
import 'package:fodaapp/features/Login/ui/widgets/password_validations.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  static bool obscureText = true;
  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasDigit = false;
  bool hasMinLength = false;
  bool hasSpecialChar = false;

  late TextEditingController passwordController;

  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
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
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email Address',
            style: TextStyles.font14blackmedium,
            textAlign: TextAlign.center,
          ),
          verticalSpace(8),

          AppTextFormFiled(
            hintText: 'name@example.com',
            validator: (value) {
              if (value == '' ||
                  value!.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Email is required';
              }
            },
            controller: context.read<LoginCubit>().emailController,
          ),
          verticalSpace(18),
          Text(
            'Password',
            style: TextStyles.font14blackmedium,
            textAlign: TextAlign.center,
          ),
          verticalSpace(8),
          AppTextFormFiled(
            hintText: '••••••••',
            obscureText: obscureText,
            suffixIcon: GestureDetector(
              onTap: () => {
                setState(() {
                  obscureText = !obscureText;
                }),
              },
              child: Icon(
                obscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            controller: context.read<LoginCubit>().passwordController,
            validator: (value) {
              if (value == '' || value!.isEmpty) {
                return 'Password is required';
              }
            },
          ),
          verticalSpace(5),
          PasswordValidations(
            hasLowercase: hasLowercase,
            hasUppercase: hasUppercase,
            hasDigit: hasDigit,
            hasMinLength: hasMinLength,
            hasSpecialChar: hasSpecialChar,
          ),
        ],
      ),
    );
  }
}
