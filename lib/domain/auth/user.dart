import 'package:dartz/dartz.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import '../core/entity.dart';
import '../core/value_failures.dart';
import '../core/value_objects.dart';
import 'value_objects.dart';

part 'user.freezed.dart';

@freezed
class User with _$User implements IEntity {
  const factory User(
      {required UniqueId id,
      required Name name,
      required EmailAddress email}) = _User;
}

extension UserX on User {
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(email.failureOrUnit)
        .fold(some, (r) => none());
  }
}
