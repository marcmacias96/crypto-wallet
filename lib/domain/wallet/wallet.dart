import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/value_failures.dart';
import '../core/value_objects.dart';
import 'value_objects.dart';

part 'wallet.freezed.dart';

@freezed
class Wallet with _$Wallet {
  const Wallet._();
  const factory Wallet({
    required UniqueId id,
    required String walletId,
    Name? name,
    required double balance,
    required String address,
    required String mnemonic,
    required String privateKey,
  }) = _Wallet;

  factory Wallet.empty() => Wallet(
        id: UniqueId(),
        walletId: '',
        name: Name(''),
        address: '',
        mnemonic: '',
        balance: 0.0,
        privateKey: '',
      );
}
