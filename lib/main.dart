import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fodaapp/core/routing/app_router.dart';
import 'package:fodaapp/foda_app.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(FodaApp(appRouter: AppRouter()));
}