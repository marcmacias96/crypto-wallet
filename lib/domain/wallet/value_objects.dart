import 'package:dartz/dartz.dart';

import '../core/value_failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';
import 'value_converter.dart';

class WalletId extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 111;
  factory WalletId(String input) {
    return WalletId._(validateMaxStringLength(input, maxLength)
        .flatMap(validateSingleLine)
        .flatMap(validateSpaces)
        .flatMap(validateStringNotEmpty)
        .flatMap(validateStringNotEmpty));
  }
  const WalletId._(this.value);
}

class Password extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory Password(String value) {
    return Password._(validatePassword(value));
  }

  const Password._(this.value);
}

class Price extends ValueObject<double> {
  final Either<ValueFailure<double>, double> value;

  factory Price(double input) {
    return Price._(
      validatePrice(input),
    );
  }

  const Price._(this.value);
}
