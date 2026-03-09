import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fodaapp/core/di/dependency_injection.dart';
import 'package:fodaapp/core/helpers/constants.dart';
import 'package:fodaapp/core/helpers/extensions.dart';
import 'package:fodaapp/core/helpers/shared_pref_helper.dart';
import 'package:fodaapp/core/routing/app_router.dart';
import 'package:fodaapp/foda_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupDependencyInjection();
  await ScreenUtil.ensureScreenSize();
  await checkedIfLoggedInUser();
  runApp(
    DevicePreview(
      // سيعمل فقط في وضع الـ Debug ولن يظهر في النسخة النهائية
      enabled: !kReleaseMode,
      builder: (context) => FodaApp(appRouter: AppRouter()),
    ),
  );
}

checkedIfLoggedInUser() async {
  String userToken = await SharedPrefHelper.getSecuredString(
    SharedPrefKeys.userToken,
  );
  if (userToken.isNullOrEmpty()) {
    isLoggedIn = false;
  } else {
    isLoggedIn = true;
  }
}
