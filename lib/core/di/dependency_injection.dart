import 'package:dio/dio.dart';
import 'package:fodaapp/core/networking/api_service.dart';
import 'package:fodaapp/core/networking/dio_factory.dart';
import 'package:fodaapp/features/Login/data/repos/login_repo.dart';
import 'package:fodaapp/features/Login/logic/cubit/login_cubit.dart';
import 'package:fodaapp/features/signup/data/repos/sign_up_repo.dart';
import 'package:fodaapp/features/signup/logic/cubit/signup_cubit.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupDependencyInjection() async {
  // Register your dependencies here

  //for dio and api service
  Dio dio = DioFactory.getDio();
  getIt.registerSingleton<ApiService>(ApiService(dio));
  //for login
  getIt.registerSingleton<LoginRepo>(LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  //for signup
  getIt.registerSingleton<SignUpRepo>(SignUpRepo(getIt()));
  getIt.registerSingleton<VerifiedEmailRepo>(VerifiedEmailRepo(getIt()));

  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt(),getIt()));

  //for Home
  // getIt.registerSingleton<HomeApiService>(HomeApiService(dio));
  // getIt.registerSingleton<HomeRepo>(HomeRepo(getIt()));
  // getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
}
