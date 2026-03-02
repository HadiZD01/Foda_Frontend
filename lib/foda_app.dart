import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fodaapp/core/routing/app_router.dart';
import 'package:fodaapp/core/routing/routes.dart';
import 'package:fodaapp/core/theming/colors.dart';
import 'package:device_preview/device_preview.dart'; // لا تنسَ هذا الاستيراد

class FodaApp extends StatelessWidget {
  final AppRouter appRouter;
  const FodaApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      // نستخدم الـ builder هنا لضمان تمرير الـ Context بشكل سليم
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,

          // --- إعدادات Device Preview الأساسية ---
          useInheritedMediaQuery: true, // مهم جداً لاستجابة التصميم
          locale: DevicePreview.locale(context), // لتغيير لغة المحاكي
          builder: DevicePreview.appBuilder, // لبناء إطار الجهاز حول التطبيق
          // ---------------------------------------
          theme: ThemeData(
            primaryColor: ColorsApp.mainblue,
            scaffoldBackgroundColor: Colors.white,
          ),
          initialRoute: Routes.loginscreen,
          onGenerateRoute: appRouter.generateRoute,
        );
      },
    );
  }
}
