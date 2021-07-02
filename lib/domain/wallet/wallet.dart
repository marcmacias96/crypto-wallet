import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/value_failures.dart';
import '../core/value_objects.dart';
import 'value_objects.dart';

part 'wallet.freezed.dart';

@freezed
class Wallet with _$Wallet {
  const factory Wallet(
      {required UniqueId id,
      required WalletId walletId,
        required Name name,
      required String apiCode}) = _Wallet;

  factory Wallet.empty() =>
      Wallet(id: UniqueId(), walletId: WalletId(''), apiCode: '', name: Name(''));
}

extension UserX on Wallet {
  Option<ValueFailure<dynamic>> get failureOption {
    return walletId.failureOrUnit.fold(some, (r) => none());
  }
}