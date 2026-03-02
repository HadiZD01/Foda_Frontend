import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fodaapp/core/di/dependency_injection.dart';
import 'package:fodaapp/core/routing/routes.dart';
import 'package:fodaapp/features/Login/logic/cubit/login_cubit.dart';
import 'package:fodaapp/features/Login/ui/login_screen.dart';
import 'package:fodaapp/features/home/ui/home_screen.dart';
import 'package:fodaapp/features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingscreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginscreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ), // أضفنا كلمة return هنا
        );
      case Routes.homescreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      // case Routes.signupscreen:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) => getIt<SignUpCubit>(),
      //       child: const SignupScreen(),
      //     ),
      //   );
      // case Routes.homescreen:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) => HomeCubit(getIt())..getSpecialization() ,
      //       child: const HomeScreen(),
      //     ),
      //   );
      // Define your routes here
      default:
        return null;

      // return MaterialPageRoute(
      //   builder: (_) => Scaffold(
      //     body: Center(child: Text('No route defined for ${settings.name}')),
      //   ),
      // );
    }
  }
}
