
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecordAddPanel extends ConsumerWidget {
  const RecordAddPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    return Dialog(
      child: SizedBox(
        width: size.width*0.9,
        height: size.height*0.5,
        child: Column(
          children: [
            Text('Record Add Button')
          ],
        )
      ),
    );
  }
  
}