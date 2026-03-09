import 'package:flutter/material.dart';
import 'package:fodaapp/core/theming/colors.dart';
import 'package:fodaapp/core/theming/styles.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onItemSelected;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.black12, width: 0.5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildBottomNav('Home', Icons.home_outlined, 0),
          _buildBottomNav('Saved', Icons.favorite_outline_outlined, 1),
          _buildBottomNav('Orders', Icons.fact_check_outlined, 2),
          _buildBottomNav('Profile', Icons.person_outlined, 3),
        ],
      ),
    );
  }

  Widget _buildBottomNav(String text, IconData icon, int index) {
    bool isSelected = currentIndex == index;
    return TextButton(
      onPressed: () => onItemSelected(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 25,
            color: isSelected ? ColorsApp.yellow : ColorsApp.gray,
          ),
          Text(
            text,
            style: isSelected
                ? TextStyles.font15yellowbold
                : TextStyles.font15DarkBlueMedium.copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
