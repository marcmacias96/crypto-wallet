import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_response.freezed.dart';

@freezed
class WalletResponse with _$WalletResponse {
  factory WalletResponse({
    required String xpub,
    required String mnemonic,
  }) = _WalletResponse;
}

@freezed
class AddressResponse with _$AddressResponse {
  factory AddressResponse({
    required String address,
  }) = _AddressResponse;
}

@freezed
class BalanceResponse with _$BalanceResponse {
  factory BalanceResponse({
    required double incoming,
    required double outgoing,
  }) = _BalanceResponse;
}
