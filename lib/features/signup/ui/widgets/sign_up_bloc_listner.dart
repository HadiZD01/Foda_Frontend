import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fodaapp/core/helpers/extensions.dart';
import 'package:fodaapp/core/networking/api_error_model.dart';
import 'package:fodaapp/features/signup/data/models/signup_response_body.dart';
import 'package:fodaapp/features/signup/logic/cubit/signup_cubit.dart';
import 'package:fodaapp/features/signup/logic/cubit/signup_state.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen: (previous, current) =>
          current is SignUploading ||
          current is SignUpSuccess ||
          current is SignUpError ||
          current is VerifeyEmailSuccess ||
          current is VerifeyEmailFailure,
      listener: (context, state) {
        state.whenOrNull(
          signUploading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(color: ColorsApp.mainblue),
              ),
            );
          },
          signUpSuccess: (signUpResponse) {
            context.pop();
            showSuccessDialog(context, signUpResponse.message, 'Verifey');
          },
          signUpFailure: (apiErrorModel) {
            setupErrorState(context, apiErrorModel);
          },
          verifeyEmailSuccess: (verifiedEmailResponseBody) {
            context.pop();
            showSuccessDialog(
              context,
              verifiedEmailResponseBody.message,
              'Home',
            );
          },
          verifeyEmailFailure: (apiErrorModel) {
            setupErrorState(context, apiErrorModel);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void showSuccessDialog(
    BuildContext context,
    String message,
    String targetRoute,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Signup Successful'),
          content: SingleChildScrollView(
            child: ListBody(children: <Widget>[Text('${message}')]),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: ColorsApp.yellow,
                disabledForegroundColor: Colors.grey.withOpacity(0.38),
              ),
              onPressed: () {
                targetRoute == 'Home'
                    ? context.pushNamed(Routes.homescreen)
                    : context.pushNamed(Routes.verifiedemail);
              },
              child: const Text('Continue'),
            ),
          ],
        );
      },
    );
  }

  void setupErrorState(BuildContext context, ApiErrorModel apiErrorModel) {
    context.pop();
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
            child: Text('Got it', style: TextStyles.font14BlueSemiBold),
          ),
        ],
      ),
    );
  }
}
