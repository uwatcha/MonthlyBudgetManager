import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monthly_budget_manager/model/record_model.dart';
import 'package:monthly_budget_manager/view/record_add_dialog.dart';
import 'package:monthly_budget_manager/view_model/record_add_dialog_view_model.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('生活費管理'),
      ),
      body: SingleChildScrollView(
        child: Center(
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
              Container(
                color: Colors.green[200]!,
                width: 1000,
                height: 200,
                child: Column(
                  children: [
                    _recordWidget(RecordModel(date: DateTime.now(), content: 'テスト', amount: 1000))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return PopScope(
                  onPopInvokedWithResult: (didPop, result) {
                    ref
                        .read(recordAddDialogViewModelProvider.notifier)
                        .resetState();
                  },
                  child: const RecordAddDialog());
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

Widget _recordWidget(RecordModel record) {
  return Container(
    decoration: BoxDecoration(border: Border.all()), 
    child: Row(
      children: [
        _dateDisplayWidget(record.date)
      ],
    ),
  );
}

Widget _dateDisplayWidget(DateTime date) {
  return Container(
    width: 80, // ウィジェット全体の幅を調整
    height: 80, // ウィジェット全体の高さを調整
    color: Colors.blue.withOpacity(0.1), // 領域を確認するための色
    child: Stack(
      children: [
        // 左上に月を配置
        Positioned(
          top: 5, // 上からの距離
          left: 5, // 左からの距離
          child: Text(
            date.month.toString(),
            style: const TextStyle(
              fontSize: 24, // 文字サイズ
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
        // 中央にスラッシュを配置 (任意、なくても可)
        const Positioned(
          top: 25, // 中央付近に調整
          left: 30,
          child: Text(
            '/',
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
        ),
        // 右下に日を配置
        Positioned(
          bottom: 5, // 下からの距離
          right: 5, // 右からの距離
          child: Text(
            date.day.toString(),
            style: const TextStyle(
              fontSize: 24, // 文字サイズ
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    ),
  );
}
