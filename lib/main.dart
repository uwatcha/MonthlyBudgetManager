import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monthly_budget_manager/view/record_add_dialog.dart';
import 'package:monthly_budget_manager/view_model/record_add_dialog_view_model.dart';

void main() {
  runApp(
    const ProviderScope(child: MonthlyBudgetManager()));
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

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('生活費管理'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 15,
          children: <Widget>[
            const Text('使用限度額'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  ),
                ),
                const Text('円'),
              ],
            ),
            SizedBox(
              width: 1000,
              height: 100,
              child: LineChart(LineChartData(lineBarsData: [
                LineChartBarData(spots: const [FlSpot(1, 0), FlSpot(2, 400)])
              ])),
            ),
            const Text('残使用可能額'),
            const Text('${5000}円'),
            const Text('使用済み額'),
            const Text('${5000}円'),
            const Text('使用履歴'),
            SizedBox(
              width: 1000,
              height: 200,
              child: Card(
                color: Colors.green[100],
                child: Column(
                  children: [],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            
            builder: (BuildContext context) {
              return PopScope(
                onPopInvokedWithResult:(didPop, result) {
                  ref.read(recordAddDialogViewModelProvider.notifier).resetState();
                },
                child: const RecordAddDialog()
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
