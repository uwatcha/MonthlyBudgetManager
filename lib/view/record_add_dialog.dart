import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monthly_budget_manager/view_model/record_add_dialog_view_model.dart';

class RecordAddDialog extends ConsumerWidget {
  const RecordAddDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;

    return Dialog(
      child: SizedBox(
          width: size.width * 0.9,
          height: size.height * 0.5,
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SegmentedButton<bool>(
                  onSelectionChanged: (b) {
                    ref
                        .watch(recordAddDialogViewModelProvider.notifier)
                        .setIsExpenditureMode(b.first);
                  },
                  segments: [
                    ButtonSegment(value: true, label: Text('支出')),
                    ButtonSegment(value: false, label: Text('収入'))
                  ],
                  selected: {
                    ref
                        .watch(recordAddDialogViewModelProvider)
                        .isExpenditureMode
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(' '),
                  SizedBox(
                    width: 100,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(hintText: '内容'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('¥'),
                  SizedBox(
                    width: 100,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(hintText: '金額'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextButton(
                      onPressed: (){},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: Text('OK', style: TextStyle(color: Colors.black),),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
