import 'package:freezed_annotation/freezed_annotation.dart';
part 'value_failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.empty({
    required String failedValue,
  }) = Empty<T>;
  const factory ValueFailure.spaces({
    required String failedValue,
  }) = Spaces<T>;
  const factory ValueFailure.exceedingLength({
    required String failedValue,
    required int max
  }) = ExceedingLength<T>;
  const factory ValueFailure.multiline({
    required String failedValue,
  }) = Multiline<T>;
  const factory ValueFailure.invalidValue({
    required double failedValue,
  }) = InvalidValue<T>;
  const factory ValueFailure.invalidEmail({
    required String failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    required String failedValue,
  }) = ShortPassword<T>;
}
