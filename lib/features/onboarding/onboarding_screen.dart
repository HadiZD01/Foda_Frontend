import 'package:flutter/material.dart';
import 'package:fodaapp/core/helpers/extensions.dart';
import 'package:fodaapp/core/routing/routes.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 1. الخلفية الملونة (Gradient Background)
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white, // لون فاتح في الأعلى
                  Color(0xFFFF8C00), // برتقالي في الأسفل
                ],
              ),
            ),
          ),

          // 2. النص الكبير في الخلفية (WEL COME)
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'WEL',
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 10,
                  ),
                ),
                const Text(
                  'COME',
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                    letterSpacing: 10,
                  ),
                ),
              ],
            ),
          ),

          // 3. صورة الفتاة (تأكد من إضافة الصورة في assets)
          // ملاحظة: لجعل الصورة تظهر فوق "WEL" وتحت "COME" ستحتاج لقص الصورة أو ترتيب الـ Stack
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              "assets/images/shopping.png",
              fit: BoxFit.contain,
              height: MediaQuery.of(context).size.height * 0.8,
            ),
          ),

          // 4. زر البداية (Get Started Button)
          Positioned(
            bottom: 50,
            left: 40,
            right: 40,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.orange,
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: TextButton(
                onPressed: () {
                  context.pushNamed(Routes.loginscreen);
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
