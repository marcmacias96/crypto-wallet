import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../core/value_failures.dart';
import '../core/value_objects.dart';
import 'value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User(
      {required UniqueId id,
      required StringSingleLine name,
      required EmailAddress email}) = _User;
}

extension UserX on User {
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(email.failureOrUnit)
        .fold(some, (r) => none());
  }
}
