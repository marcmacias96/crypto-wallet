import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/value_failures.dart';
import '../core/value_objects.dart';
import 'value_objects.dart';

part 'contact.freezed.dart';

@freezed
class Contact with _$Contact {
  const factory Contact({
    required UniqueId id,
    required Name name,
    required Address address,
  }) = _Contact;

  factory Contact.empty() => Contact(
        id: UniqueId(),
        name: Name(''),
        address: Address(''),
      );
}

extension ContactX on Contact {
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(name.failureOrUnit)
        .fold(some, (r) => none());
  }
}
