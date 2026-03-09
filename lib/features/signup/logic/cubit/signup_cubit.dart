import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fodaapp/core/helpers/constants.dart';
import 'package:fodaapp/core/helpers/extensions.dart';
import 'package:fodaapp/core/helpers/shared_pref_helper.dart';
import 'package:fodaapp/core/networking/api_error_handler.dart';
import 'package:fodaapp/core/networking/api_error_model.dart';
import 'package:fodaapp/core/networking/api_result.dart';
import 'package:fodaapp/core/networking/dio_factory.dart';
import 'package:fodaapp/core/theming/styles.dart';
import 'package:fodaapp/features/signup/data/models/signup_reqeust_body.dart';
import 'package:fodaapp/features/signup/data/repos/sign_up_repo.dart';
import 'package:fodaapp/features/signup/logic/cubit/signup_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  final VerifiedEmailRepo _verifiedEmailRepo;
  SignUpCubit(this._signUpRepo, this._verifiedEmailRepo)
    : super(const SignUpState.initial());

  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  TextEditingController verificationCodeController = TextEditingController();
  int get codeAsInt => int.tryParse(verificationCodeController.text) ?? 0;
  final formkey = GlobalKey<FormState>();

  void emitSignUpState() async {
    emit(SignUpState.signUploading());

    if (passwordConfirmationController.text == passwordController.text) {
      final response = await _signUpRepo.signUp(
        SignupReqeustBody(
          email: emailController.text,
          password: passwordController.text,
          fullName: fullNameController.text,
        ),
      );

      response.when(
        success: (signUpResponse) {
          emit(SignUpState.signUpSuccess(signUpResponse));
        },
        failure: (apiErrorModel) {
          emit(SignUpState.signUpFailure(apiErrorModel));
        },
      );
    } else {
      emit(SignUpState.signUpFailure(ApiErrorHandler.handle("error")));
    }
  }

  void emitVerifiedEmail({required String email}) async {
    emit(SignUpState.signUploading());
    final response = await _verifiedEmailRepo.verifiedEmail(
      VerifiedEmailReqeustBody(
        email: email,
        verificationCode: codeAsInt,
      ),
    );
    response.when(
      success: (verifiedEmailResponseBody) {
        saveUserToken(verifiedEmailResponseBody.accessToken);
        emit(SignUpState.verifeyEmailSuccess(verifiedEmailResponseBody));
      },
      failure: (apiErrorModel) {
        emit(VerifeyEmailFailure(apiErrorModel));
      },
    );
  }
}

Future<void> saveUserToken(token) async {
  await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
  DioFactory.setTokenAfterLogin(token);
}
