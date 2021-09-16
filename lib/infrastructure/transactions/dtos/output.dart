import 'package:freezed_annotation/freezed_annotation.dart';

part 'output.freezed.dart';
part 'output.g.dart';

@freezed
class Output with _$Output {
  factory Output({
    double? value,
    String? script,
    String? address,
  }) = _Output;

  factory Output.fromJson(Map<String, dynamic> json) => _$OutputFromJson(json);
}
