import 'package:dartz/dartz.dart';

import '../wallet/value_converter.dart';
import 'value_failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateCryptoPassword(String input) {
  var password;
  if (input.length >= 6) {
    if (input.length > 20) {
      password = decriptPassword(input);
    } else {
      password = encryptPassword(input);
    }
    return right(password);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.exceedingLength(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<ValueFailure<String>, String> validateMinStringLength(
  String input,
  int minLength,
) {
  if (input.length == minLength) {
    return right(input);
  } else {
    if (input.isEmpty) {
      return right(input);
    }
    return left(ValueFailure.minLength(
      failedValue: input,
      max: minLength,
    ));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<double>, double> validatePrice(double input) {
  if (input >= 0) {
    return right(input);
  } else {
    return left(ValueFailure.invalidValue(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSpaces(String input) {
  if (input.contains(' ')) {
    return left(ValueFailure.spaces(failedValue: input));
  } else {
    return right(input);
  }
}
