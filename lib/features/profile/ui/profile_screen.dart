import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fodaapp/core/helpers/constants.dart';
import 'package:fodaapp/core/helpers/spacing.dart';
import 'package:fodaapp/core/theming/colors.dart';
import 'package:fodaapp/core/theming/styles.dart';
import 'package:fodaapp/features/Login/ui/widgets/app_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.WhiteBackground,
      appBar: AppBar(
        animateColor: false,
        surfaceTintColor: ColorsApp.WhiteBackground,
        backgroundColor: ColorsApp.WhiteBackground,
        foregroundColor: ColorsApp.WhiteBackground,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back, size: 35, color: ColorsApp.yellow),
        //   onPressed: () {
        //     context.pushReplacementNamed(Routes.loginscreen);
        //   },
        // ),
        title: Text('My Profile', style: TextStyles.font24blackbold),
        elevation: 0,
        // backgroundColor: ColorsApp.WhiteBackground,
        centerTitle: true,
        // foregroundColor: Colors.black,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(
              vertical: 20.h,
              horizontal: 20.w,
            ),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: ClipOval(
                      // هذا هو السطر الذي ستقوم بإضافته
                      child: Image.asset(
                        'assets/images/Background.png',
                        alignment: Alignment.topCenter,
                        width: 200.w, // عرض ثابت
                        height: 200.h, // ارتفاع ثابت ومساوٍ للعرض
                        fit: BoxFit.cover, // تأكد من BoxFit.cover لملء الدائرة
                      ),
                    ),
                  ),
                  verticalSpace(5),
                  Center(
                    child: Text(
                      // '${loginResponseBodySaved.customerData.fullName}',
                      'Zidani Hadi',
                      style: TextStyles.font24blackbold,
                    ),
                  ),
                  verticalSpace(60),
                  Text(
                    'Account Settings',
                    style: TextStyles.font14GrayRegular,
                    textAlign: TextAlign.start,
                  ),
                  verticalSpace(30),

                  // ListTile(
                  //   leading: Container(
                  //     width: 50.w,
                  //     height: 50.h,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(10),
                  //       color: Color.fromARGB(255, 255, 238, 186),
                  //     ),
                  //     child: Icon(
                  //       Icons.person_outline,
                  //       size: 30,
                  //       color: ColorsApp.yellow,
                  //     ),
                  //   ),
                  //   title: Text(
                  //     'Personal Information',
                  //     style: TextStyles.font15DarkBlueMedium,
                  //   ),
                  //   trailing: Icon(
                  //     Icons.arrow_forward,
                  //     size: 30,
                  //     color: ColorsApp.yellow,
                  //   ),
                  // ),
                  _buildListTile(
                    Icons.person_outline,
                    'Personal Information',
                    () {},
                  ),
                  _buildListTile(
                    Icons.location_on_outlined,
                    'My Addresses',
                    () {},
                  ),
                  _buildListTile(Icons.favorite_outline, 'My Favorits', () {}),
                  _buildListTile(Icons.settings_outlined, 'Settings', () {}),
                  verticalSpace(100),
                  AppButton(
                    color: Colors.red,
                    onPressed: () {},
                    text: 'LogOut',
                    styleText: TextStyles.font16whitemedium,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildListTile(IconData ic, String text, VoidCallback ontap) {
  return ListTile(
    onTap: ontap,
    leading: Container(
      width: 50.w,
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 255, 238, 186),
      ),
      child: Icon(ic, size: 30, color: ColorsApp.yellow),
    ),
    title: Text(text, style: TextStyles.font15DarkBlueMedium),
    trailing: IconButton(
      icon: Icon(Icons.arrow_forward, size: 30, color: ColorsApp.yellow),
      onPressed: ontap,
    ),
  );
}
