import 'package:dartz/dartz.dart';

import '../core/value_failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

class Address extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  static const minLength = 42;

  factory Address(String input) {
    return Address._(validateMinStringLength(input, minLength)
        .flatMap(validateSingleLine)
        .flatMap(validateStringNotEmpty));
  }

  const Address._(this.value);
}
