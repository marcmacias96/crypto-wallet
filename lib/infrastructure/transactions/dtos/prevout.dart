import 'package:freezed_annotation/freezed_annotation.dart';

part 'prevout.freezed.dart';
part 'prevout.g.dart';

@freezed
class Prevout with _$Prevout {
  factory Prevout({
    String? hash,
    int? index,
  }) = _Prevout;

  factory Prevout.fromJson(Map<String, dynamic> json) =>
      _$PrevoutFromJson(json);
}
