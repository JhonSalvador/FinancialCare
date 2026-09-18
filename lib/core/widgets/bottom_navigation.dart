import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  final int currentIndex;

  final Function(int) onTap;

  const BottomNavigation({
    super.key,

    required this.currentIndex,

    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,

      onTap: onTap,

      selectedItemColor: const Color(0xFF005124),

      unselectedItemColor: Colors.grey,

      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Início"),

        BottomNavigationBarItem(
          icon: Icon(Icons.credit_card),

          label: "Financeiro",
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.show_chart),

          label: "Investimentos",
        ),

        BottomNavigationBarItem(icon: Icon(Icons.flag), label: "Metas"),
      ],
    );
  }
}
