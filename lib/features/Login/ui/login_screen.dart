// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:fodaapp/core/helpers/spacing.dart';
// import 'package:fodaapp/core/theming/colors.dart';
// import 'package:fodaapp/core/theming/styles.dart';
// import 'package:fodaapp/features/Login/logic/cubit/login_cubit.dart';
// import 'package:fodaapp/features/Login/ui/widgets/app_button.dart';
// import 'package:fodaapp/features/Login/ui/widgets/email_and_password.dart';
// import 'package:fodaapp/features/Login/ui/widgets/login_bloc_listener.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               SizedBox(
//                 child: Stack(
//                   alignment: AlignmentGeometry.bottomCenter,
//                   children: [
//                     Container(
//                       height: 812.h,
//                       width: double.infinity,
//                       child: Column(
//                         children: [
//                           Container(
//                             width: double.infinity,
//                             height: 385.h,
//                             decoration: BoxDecoration(
//                               image: DecorationImage(
//                                 image: AssetImage(
//                                   'assets/images/Header_Image_Section.png',
//                                 ),
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                           // Container(width: double.infinity),
//                         ],
//                       ),
//                     ),

//                     Positioned(
//                       bottom: 0.h,
//                       child: Container(
//                         padding: EdgeInsets.only(
//                           left: 20.w,
//                           right: 20.w,
//                           top: 20.h,
//                           bottom: 15.h,
//                         ),
//                         width: 320.w,
//                         decoration: BoxDecoration(
//                           color: ColorsApp.WhiteBackground,
//                           borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(24),
//                             topRight: Radius.circular(24),
//                           ),
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Center(
//                               child: Text(
//                                 'Welcome Back',
//                                 style: TextStyles.font24blackbold,
//                               ),
//                             ),
//                             Center(
//                               child: Text(
//                                 "Sign in to continue your curated journey.",
//                                 style: TextStyles.font14grayregular,
//                               ),
//                             ),
//                             verticalSpace(25),
//                             EmailAndPassword(),
//                             verticalSpace(15),
//                             AppButton(
//                               onPressed: () {
//                                 ValidateThenDoLogin(context);
//                               },
//                               text: 'Sign In',
//                               styleText: TextStyles.font16yellowbold,
//                             ),
//                             verticalSpace(20),
//                             Row(
//                               children: [
//                                 Text(
//                                   "Don't have an account? ",
//                                   style: TextStyles.font14GrayRegular,
//                                 ),
//                                 Text(
//                                   "Sign Up",
//                                   style: TextStyles.font16yellowbold,
//                                 ),
//                               ],
//                             ),
//                             LoginBlocListener(),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// void ValidateThenDoLogin(BuildContext context) {
//   final formkey = context.read<LoginCubit>().formKey;
//   if (formkey.currentState!.validate()) {
//     // Proceed with login
//     context.read<LoginCubit>().emitLoginState();
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fodaapp/core/helpers/spacing.dart';
import 'package:fodaapp/core/theming/colors.dart';
import 'package:fodaapp/core/theming/styles.dart';
import 'package:fodaapp/features/Login/logic/cubit/login_cubit.dart';
import 'package:fodaapp/features/Login/ui/widgets/app_button.dart';
import 'package:fodaapp/features/Login/ui/widgets/email_and_password.dart';
import 'package:fodaapp/features/Login/ui/widgets/login_bloc_listener.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // نستخدم Scaffold بدون SafeArea في البداية لتغطية الشاشة بالكامل
      body: SingleChildScrollView(
        child: SizedBox(
          // نجعل الارتفاع يساوي ارتفاع الشاشة بالكامل
          // height: MediaQuery.of(context).size.height.h,
          child: Stack(
            children: [
              // 1. صورة الخلفية (تأخذ الجزء العلوي)
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                height:
                    MediaQuery.of(context).size.height *
                    0.5, // تأخذ نصف الشاشة تقريباً
                child: Image.asset(
                  'assets/images/Header_Image_Section.png',
                  fit: BoxFit.cover,
                ),
              ),

              // 2. الحاوية البيضاء (الفورم)
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 340.w,
                  // نتحكم في المسافة من الأعلى لتبدأ الحاوية من مكان مناسب
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.4,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                    vertical: 30.h,
                  ),
                  decoration: BoxDecoration(
                    color: ColorsApp.WhiteBackground,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32.r),
                      topRight: Radius.circular(32.r),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, -5),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Column(
                          children: [
                            Text(
                              'Welcome Back',
                              style: TextStyles.font24blackbold,
                            ),
                            verticalSpace(8),
                            Text(
                              "Sign in to continue your curated journey.",
                              style: TextStyles.font14grayregular,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      verticalSpace(30),
                      const EmailAndPassword(),
                      verticalSpace(24),
                      AppButton(
                        onPressed: () {
                          validateThenDoLogin(context);
                        },
                        text: 'Sign In',
                        styleText: TextStyles.font16yellowbold,
                      ),
                      verticalSpace(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: TextStyles.font14GrayRegular,
                          ),
                          GestureDetector(
                            onTap: () {
                              // التنقل لصفحة التسجيل
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyles.font16yellowbold,
                            ),
                          ),
                        ],
                      ),
                      const LoginBlocListener(),
                      // مساحة إضافية في الأسفل لتجنب الحواف تماماً
                      verticalSpace(20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    final formKey = context.read<LoginCubit>().formKey;
    if (formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState();
    }
  }
}
