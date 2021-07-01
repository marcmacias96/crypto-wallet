import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../core/value_failures.dart';
import '../core/value_objects.dart';
import '../wallet/value_objects.dart';

part 'contact.freezed.dart';

@freezed
class Contact with _$Contact {
  const factory Contact({required Name name, required WalletId walletId}) =
      _Contact;

  factory Contact.empty() => Contact(name: Name(''), walletId: WalletId(''));
}

extension ContactX on Contact {
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(name.failureOrUnit)
        .andThen(walletId.failureOrUnit)
        .fold(some, (r) => none());
  }
}
