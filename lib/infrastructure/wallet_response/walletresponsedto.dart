import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/wallet/wallet.dart';
import '../../domain/wallet_response/wallet_response.dart';

part 'walletresponsedto.freezed.dart';
part 'walletresponsedto.g.dart';

@freezed
class WalletResponseDto with _$WalletResponseDto {
  factory WalletResponseDto({
    @JsonKey(includeIfNull: false) required String guid,
    @JsonKey(includeIfNull: false) required String address,
    @JsonKey(includeIfNull: false) required String label,
  }) = _WalletResponseDto;

  factory WalletResponseDto.fromDomain(Wallet wallet) {
    return WalletResponseDto(
        guid: wallet.walletId.getOrCrash(),
        address: wallet.address,
        label: wallet.name!.getOrCrash());
  }

  factory WalletResponseDto.fromJson(Map<String, dynamic> json) =>
      _$WalletResponseDtoFromJson(json);
}

extension WalletDtoX on WalletResponseDto {
  WalletResponse toDomain() {
    return WalletResponse(address: address, guid: guid, label: label);
  }
}
