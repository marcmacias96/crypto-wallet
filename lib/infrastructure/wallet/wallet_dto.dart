import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/value_objects.dart';
import '../../domain/wallet/value_objects.dart';
import '../../domain/wallet/wallet.dart';

part 'wallet_dto.freezed.dart';
part 'wallet_dto.g.dart';

@freezed
class WalletDto with _$WalletDto {
  const WalletDto._();

  @JsonSerializable(explicitToJson: true)
  const factory WalletDto({
    @JsonKey(ignore: false) required String id,
    @JsonKey(includeIfNull: false) required String address,
    @JsonKey(includeIfNull: false) String? name,
    @JsonKey(includeIfNull: false) required String mnemonic,
    @JsonKey(name: 'is_default') required bool isDefault,
    @JsonKey(includeIfNull: false, name: 'wallet_id') required String walletId,
    @JsonKey(includeIfNull: false, name: 'private_key')
        required String privateKey,
  }) = _WalletDto;

  factory WalletDto.fromDomain(Wallet wallet) {
    return WalletDto(
      isDefault: true,
      id: wallet.id.getOrCrash(),
      walletId: wallet.walletId,
      name: wallet.name!.getOrCrash(),
      mnemonic: wallet.mnemonic,
      address: wallet.address,
      privateKey: wallet.privateKey,
    );
  }

  factory WalletDto.fromJson(Map<String, dynamic> json) =>
      _$WalletDtoFromJson(json);

  factory WalletDto.fromFirestore(DocumentSnapshot doc) =>
      WalletDto.fromJson(doc.data() as Map<String, dynamic>)
          .copyWith(id: doc.id);

  Wallet toDomain() {
    return Wallet(
        id: UniqueId.fromUniqueString(id),
        walletId: walletId,
        name: Name(name!),
        mnemonic: mnemonic,
        address: address,
        privateKey: privateKey,
        balance: 0.0);
  }
}
