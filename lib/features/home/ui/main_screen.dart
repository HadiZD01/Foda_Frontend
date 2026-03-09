import 'package:flutter/material.dart';
import 'package:fodaapp/features/Login/data/models/login_response_body.dart';
import 'package:fodaapp/features/home/ui/home_screen.dart';
import 'package:fodaapp/features/home/ui/widgets/custom_bottom_nav_bar.dart';
import 'package:fodaapp/features/orders/ui/orders_screen.dart';
import 'package:fodaapp/features/profile/ui/profile_screen.dart';
import 'package:fodaapp/features/saved/ui/saved_screen.dart'; // صفحتك التي أرسلتها
// استورد باقي الصفحات هنا
// import 'package:fodaapp/features/saved/ui/saved_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // قائمة الصفحات
  final List<Widget> _screens = [
    HomeScreen(), // محتوى صفحة الهوم (بدون Scaffold الخاص بها)
    SavedScreen(),
    OrdersScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        // IndexedStack يحافظ على حالة الصفحات عند التنقل
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _selectedIndex,
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
