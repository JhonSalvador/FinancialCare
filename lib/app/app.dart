import 'package:flutter/material.dart';
import 'main_navigation.dart';
import '../core/theme/app_theme.dart';

class PersonalFinanceApp extends StatelessWidget {
  const PersonalFinanceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Personal Finance',

      theme: AppTheme.theme,

      home: const MainNavigation(),
    );
  }
}
