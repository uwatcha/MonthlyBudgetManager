import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monthly_budget_manager/view/home_page.dart';

void main() {
  runApp(const ProviderScope(child: MonthlyBudgetManager()));
}

class MonthlyBudgetManager extends StatelessWidget {
  const MonthlyBudgetManager({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '生活費管理',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
