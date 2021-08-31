import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/wallet/wallet.dart';
import '../../domain/wallet_response/wallet_response.dart';

part 'walletresponsedto.freezed.dart';
part 'walletresponsedto.g.dart';

@freezed
class WalletResponseDto with _$WalletResponseDto {
  const WalletResponseDto._();
  factory WalletResponseDto({
    @JsonKey(includeIfNull: false) required String mnemonic,
    @JsonKey(includeIfNull: false) required String xpub,
  }) = _WalletResponseDto;

  factory WalletResponseDto.fromDomain(Wallet wallet) {
    return WalletResponseDto(
      xpub: wallet.walletId,
      mnemonic: wallet.address,
    );
  }

  factory WalletResponseDto.fromJson(Map<String, dynamic> json) =>
      _$WalletResponseDtoFromJson(json);

  WalletResponse toDomain() {
    return WalletResponse(mnemonic: mnemonic, xpub: xpub);
  }
}

@freezed
class AddressResponseDto with _$AddressResponseDto {
  const AddressResponseDto._();
  factory AddressResponseDto({
    @JsonKey(includeIfNull: false) required String address,
  }) = _AddressResponseDto;

  factory AddressResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AddressResponseDtoFromJson(json);

  AddressResponse toDomain() {
    return AddressResponse(address: address);
  }
}

@freezed
class WalletBalanceDto with _$WalletBalanceDto {
  const WalletBalanceDto._();
  factory WalletBalanceDto({
    @JsonKey(includeIfNull: false) required String incoming,
    @JsonKey(includeIfNull: false) required String outgoing,
  }) = _WalletBalanceDto;

  factory WalletBalanceDto.fromJson(Map<String, dynamic> json) =>
      _$WalletBalanceDtoFromJson(json);

  BalanceResponse toDomain() {
    return BalanceResponse(
        incoming: double.parse(incoming), outgoing: double.parse(outgoing));
  }
}
