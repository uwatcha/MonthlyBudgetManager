import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_model.freezed.dart';

@freezed
abstract class RecordModel with _$RecordModel {
  const factory RecordModel({
    required DateTime date,
    required String content,
    /// 収入は正の数，支出は負の数として管理する
    required int amount
  }) = _RecordModel;
}