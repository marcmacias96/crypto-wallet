import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../core/value_failures.dart';
import '../core/value_objects.dart';

part 'contact.freezed.dart';

@freezed
class Contact with _$Contact {
  const factory Contact({required Name name, required String address}) =
      _Contact;

  factory Contact.empty() => Contact(name: Name(''), address: '');
}

extension ContactX on Contact {
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(name.failureOrUnit)
        .fold(some, (r) => none());
  }
}
