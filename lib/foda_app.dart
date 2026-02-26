import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fodaapp/core/routing/app_router.dart';
import 'package:fodaapp/core/routing/routes.dart';
import 'package:fodaapp/core/theming/colors.dart';

class FodaApp extends StatelessWidget {
  final AppRouter appRouter;
  const FodaApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: ColorsApp.mainblue,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: Routes.onboardingscreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
