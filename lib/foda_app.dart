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
      designSize: const Size(390, 884), // تأكد أن هذا هو مقاس التصميم في Figma
      minTextAdapt: true,
      splitScreenMode: true, // أضف هذا السطر لتحسين الاستجابة
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,

          // إعدادات Device Preview
          // useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: (context, widget) {
            // نقوم بدمج الـ builder الخاص بـ DevicePreview مع ScreenUtil
            widget = DevicePreview.appBuilder(context, widget);
            return widget;
          },

          theme: ThemeData(
            primaryColor: ColorsApp.mainblue,
            scaffoldBackgroundColor: Colors.white,
          ),
          initialRoute: Routes.profilescreen,
          onGenerateRoute: appRouter.generateRoute,
        );
      },
    );
  }
}
