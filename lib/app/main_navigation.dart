import 'package:flutter/material.dart';

import '../features/dashboard/dashboard_page.dart';
import '../features/financeiro/financeiro_page.dart';
import '../features/investimentos/investimentos_page.dart';
import '../features/metas/metas_page.dart';
import '../core/widgets/bottom_navigation.dart';
import '../features/transacoes/transacoes_page.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int currentIndex = 0;

  final pages = const [
    DashboardPage(),

    TransacoesPage(),

    InvestimentosPage(),

    MetasPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigation(
        currentIndex: currentIndex,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
