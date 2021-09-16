import 'package:freezed_annotation/freezed_annotation.dart';

import 'coin.dart';
import 'prevout.dart';

part 'input.freezed.dart';
part 'input.g.dart';

@freezed
class Input with _$Input {
  factory Input({
    Prevout? prevout,
    String? script,
    String? witness,
    int? sequence,
    Coin? coin,
  }) = _Input;

  factory Input.fromJson(Map<String, dynamic> json) => _$InputFromJson(json);
}
