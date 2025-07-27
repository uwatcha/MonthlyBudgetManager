import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monthly_budget_manager/view_model/home_page_view_model.dart';
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
                    .read(recordAddDialogViewModelProvider.notifier)
                    .setIsExpenditureMode(b.first);
              },
              segments: [
                ButtonSegment(value: true, label: Text('支出')),
                ButtonSegment(value: false, label: Text('収入'))
              ],
              selected: {
                ref.watch(recordAddDialogViewModelProvider).isExpenditureMode
              },
            ),
            _dialogTextField(
              headLabel: ' ',
              onChanged: (text) {
                ref
                    .read(recordAddDialogViewModelProvider.notifier)
                    .setContent(text);
              },
              hintText: '内容',
            ),
            _dialogTextField(
                headLabel: '¥',
                onChanged: (text) {
                  ref
                      .read(recordAddDialogViewModelProvider.notifier)
                      .setAmount(text == ' ' ? -1 : int.parse(text));
                },
                hintText: '金額',
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly]),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextButton(
                    onPressed: () {
                      bool isSucceeded = ref
                          .read(homePageViewModelProvider.notifier)
                          .addRecord(
                              ref.watch(recordAddDialogViewModelProvider));
                      if (isSucceeded) Navigator.pop(context);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: Text(
                      'OK',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget _dialogTextField({
  required headLabel,
  required Function(String) onChanged,
  required String hintText,
  TextInputType? keyboardType,
  List<TextInputFormatter>? inputFormatters,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(headLabel),
      SizedBox(
        width: 100,
        child: TextField(
          onChanged: onChanged,
          keyboardType: keyboardType,
          textAlign: TextAlign.start,
          decoration: InputDecoration(hintText: hintText),
          inputFormatters: inputFormatters,
        ),
      ),
    ],
  );
}
