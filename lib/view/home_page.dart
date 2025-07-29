import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monthly_budget_manager/model/record_model.dart';
import 'package:monthly_budget_manager/view/money_line_chart.dart';
import 'package:monthly_budget_manager/view/record_add_dialog.dart';
import 'package:monthly_budget_manager/view_model/home_page_view_model.dart';
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
              MoneyLineChart(),
              const Text('残使用可能額'),
              const Text('${5000}円'),
              const Text('使用済み額'),
              const Text('${5000}円'),
              const Text('使用履歴'),
              Container(
                color: Colors.green[200]!,
                width: 1000,
                height: 200,
                child: ListView.builder(
                  itemCount:
                      ref.watch(homePageViewModelProvider).records.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _recordWidget(ref,
                        ref.watch(homePageViewModelProvider).records[index]);
                  },
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

//TODO: x軸を給料日~次の給料日，y軸を金額（Maxを今月の一番多かった時の金額の1.2倍）のグラフを作る
//TODO: 実際のグラフとこのペースだと仮定した予測グラフを表示する
//TODO: 予算がオーバーする = currentMoneyが-になることを想定する

/// 履歴表示
Widget _recordWidget(WidgetRef ref, RecordModel record) {
  return Container(
    decoration: BoxDecoration(border: Border.all()),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _dateDisplayWidget(record.date),
        Text(record.content),
        Text('¥ ${record.amount}'), //TODO: RecordModelに収入か支出かの項目を追加
        PopupMenuButton(
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: TextButton(
                  onPressed: () {},
                  child: _popupMenuButtonLabel(icon: Icons.edit, text: '編集'),
                ),
              ),
              PopupMenuItem(
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    ref
                        .read(homePageViewModelProvider.notifier)
                        .deleteRecord(record.date);
                  },
                  child: _popupMenuButtonLabel(icon: Icons.delete, text: '削除'),
                ),
              ),
            ];
          },
          icon: Icon(Icons.more_vert),
        ),
      ],
    ),
  );
}

/// 履歴表示ウィジェットの3点リーダーを押した時に出てくるメニュー内のボタンのラベル
Widget _popupMenuButtonLabel({required IconData icon, required text}) {
  return Row(
    spacing: 10,
    children: [Icon(icon), Text(text)],
  );
}

/// 履歴表示ウィジェットの日付部分
Widget _dateDisplayWidget(DateTime date) {
  return Container(
    width: 80, 
    height: 80,
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
