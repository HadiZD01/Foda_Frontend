import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fodaapp/core/di/dependency_injection.dart';
import 'package:fodaapp/core/routing/routes.dart';
import 'package:fodaapp/features/Login/logic/cubit/login_cubit.dart';
import 'package:fodaapp/features/Login/ui/login_screen.dart';
import 'package:fodaapp/features/home/logic/cubit/home_products_cubit.dart';
import 'package:fodaapp/features/home/ui/home_screen.dart';
import 'package:fodaapp/features/home/ui/main_screen.dart';
import 'package:fodaapp/features/onboarding/onboarding_screen.dart';
import 'package:fodaapp/features/orders/ui/orders_screen.dart';
import 'package:fodaapp/features/profile/ui/profile_screen.dart';
import 'package:fodaapp/features/saved/ui/saved_screen.dart';
import 'package:fodaapp/features/signup/logic/cubit/signup_cubit.dart';
import 'package:fodaapp/features/signup/ui/sign_up_screen.dart';
import 'package:fodaapp/features/signup/ui/widgets/verifeied_email_screen.dart';

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
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<HomeProductsCubit>()..emitProductData(),
            child: HomeScreen(),
          ),
        );
      case Routes.signupscreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignUpCubit>(),
            child: const SignUpScreen(),
          ),
        );
      case Routes.verifiedemail:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            // إذا كنت تستخدم getIt، تأكد أنها تزود نسخة جديدة نظيفة
            create: (context) => getIt<SignUpCubit>(),
            child: const VerifeiedEmail(),
          ),
          settings:
              settings, // هذا السطر هو الذي يمنع الكراش ويسمح بوصول الـ arguments
        );
      case Routes.orderscreen:
        return MaterialPageRoute(builder: (_) => OrdersScreen());
      case Routes.savedscreen:
        return MaterialPageRoute(builder: (_) => SavedScreen());
      case Routes.profilescreen:
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case Routes.mainscreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) =>
                    getIt<HomeProductsCubit>()..emitProductData(),
              ),
              // BlocProvider(create: (_) =>ProfileScreen()),
            ],
            child: const MainScreen(),
          ),
        );
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
