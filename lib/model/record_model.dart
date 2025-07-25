import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_model.freezed.dart';

@freezed
abstract class RecordModel with _$RecordModel {
  const factory RecordModel({
    required DateTime date,
    required String content,
    required int amount
  }) = _RecordModel;
}