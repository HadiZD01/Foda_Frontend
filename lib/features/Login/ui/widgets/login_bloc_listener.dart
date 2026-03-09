import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fodaapp/core/helpers/extensions.dart';
import 'package:fodaapp/core/routing/routes.dart';
import 'package:fodaapp/core/theming/colors.dart';
import 'package:fodaapp/core/theming/styles.dart';
import 'package:fodaapp/features/Login/logic/cubit/login_cubit.dart';
import 'package:fodaapp/features/Login/logic/cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            // Show loading indicator
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => Center(
                child: CircularProgressIndicator(color: ColorsApp.yellow),
              ),
            );
          },
          success: (loginResponseBody) {
            // Dismiss loading indicator
            context.pop();
            // Navigate to home screen or another screen
            context.pushNamed(Routes.mainscreen,arguments: loginResponseBody);
          },
          failure: (apiErrorModel) => {
            context.pop(),
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                icon: const Icon(Icons.error, color: Colors.red, size: 32),
                content: Text(
                  apiErrorModel.getAllErrorsMessages(),
                  style: TextStyles.font15DarkBlueMedium,
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: Text('Got it', style: TextStyles.font16yellowbold),
                  ),
                ],
              ),
            ),
          },
        );
      },
      child: SizedBox.shrink(),
    );
  }
}
