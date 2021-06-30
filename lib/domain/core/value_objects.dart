import 'package:crypto_wallet/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import 'errors.dart';
import 'value_failures.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  bool isValid() => value.isRight();

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';


}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(
      right(Uuid().v1()),
    );
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(
      right(uniqueId),
    );
  }
  const UniqueId._(this.value);

}

class Name extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;

  factory Name(String input) {
    return Name._(validateMaxStringLength(input, maxLength)
        .flatMap(validateSingleLine)
        .flatMap(validateStringNotEmpty));
  }

  const Name._(this.value);
}

class WalletId extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 36;
  factory WalletId(String input) {
    return WalletId._(validateMaxStringLength(input, maxLength)
        .flatMap(validateSingleLine)
        .flatMap(validateSpaces)
    );
  }
  const WalletId._(this.value);
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