import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/value_objects.dart';
import '../../domain/wallet/value_objects.dart';
import '../../domain/wallet/wallet.dart';

part 'wallet_dto.freezed.dart';
part 'wallet_dto.g.dart';

@freezed
class WalletDto with _$WalletDto {
  @JsonSerializable(explicitToJson: true)
  const factory WalletDto(
      {@JsonKey(ignore: false)
          String? id,
      @JsonKey(includeIfNull: false, name: 'api_code')
          required String apiCode,
      @JsonKey(
        includeIfNull: false,
      )
          required String address,
      @JsonKey(includeIfNull: false)
          String? name,
      @JsonKey(includeIfNull: false)
          required String password,
      @JsonKey(name: 'is_default')
          required bool isDefault,
      @JsonKey(includeIfNull: false, name: 'wallet_id')
          required String walletId}) = _WalletDto;

  factory WalletDto.fromDomain(Wallet wallet) {
    return WalletDto(
        isDefault: true,
        id: wallet.id.getOrCrash(),
        walletId: wallet.walletId.getOrCrash(),
        name: wallet.name!.getOrCrash(),
        password: wallet.password.encrypt().getOrCrash(),
        address: wallet.address,
        apiCode: wallet.apiCode);
  }

  factory WalletDto.fromJson(Map<String, dynamic> json) =>
      _$WalletDtoFromJson(json);

  factory WalletDto.fromFirestore(DocumentSnapshot doc) =>
      WalletDto.fromJson(doc.data() as Map<String, dynamic>)
          .copyWith(id: doc.id);
}

extension WalletDtoX on WalletDto {
  Wallet toDomain() {
    return Wallet(
        id: UniqueId.fromUniqueString(id ?? ''),
        walletId: WalletId(walletId),
        name: Name(name!),
        password: Password(password).decrypt(),
        apiCode: apiCode,
        address: address);
  }
}
