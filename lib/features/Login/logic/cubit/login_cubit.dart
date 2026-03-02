import 'package:flutter/cupertino.dart';
import 'package:fodaapp/core/helpers/constants.dart';
import 'package:fodaapp/core/helpers/shared_pref_helper.dart';
import 'package:fodaapp/core/networking/api_result.dart';
import 'package:fodaapp/core/networking/dio_factory.dart';
import 'package:fodaapp/features/Login/data/models/login_reqeust_body.dart';
import 'package:fodaapp/features/Login/data/repos/login_repo.dart';
import 'package:fodaapp/features/Login/logic/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(LoginState.initial());

  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void emitLoginState() async {
    emit(LoginState.loading());
    final result =await _loginRepo.login(
      LoginReqeustBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
  result.when(
      success: (loginResponseBody) async {
        await saveUserToken(loginResponseBody.accessToken);
        emit(LoginState.success(loginResponseBody));
      },
      failure: (apiErrorModel) {
        emit(LoginState.failure(apiErrorModel));
      },
    );
  }

  Future<void> saveUserToken(token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenAfterLogin(token);
  }
  
}
