import 'package:flutter/material.dart';

import 'data/sample_selected_menus.dart';
import 'screens/nutrition_summary_screen.dart';

void main() {
  runApp(const CafeteriaApp());
}

class CafeteriaApp extends StatelessWidget {
  const CafeteriaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '학식',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2E7D32),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: NutritionSummaryScreen(
        summaryDate: SampleSelectedMenus.summaryDate,
        menus: SampleSelectedMenus.items,
      ),
    );
  }
}
