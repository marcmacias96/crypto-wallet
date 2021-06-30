import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/value_objects.dart';
import '../../domain/wallet/value_objects.dart';
import '../../domain/wallet/wallet.dart';

part 'wallet_dto.freezed.dart';
part 'wallet_dto.g.dart';

@freezed
class WalletDto with _$WalletDto {
  const factory WalletDto(
      {@JsonKey(ignore: true) String? id,
      String? apiCode,
      String? walletId}) = _WalletDto;

  factory WalletDto.fromJson(Map<String, dynamic> json) =>
      _$WalletDtoFromJson(json);

  factory WalletDto.fromFirestore(DocumentSnapshot? doc) =>
      WalletDto.fromJson(doc!.data() as Map<String, dynamic>)
          .copyWith(id: doc.id);

  Wallet toDomain() {
    return Wallet(
      id: UniqueId.fromUniqueString(id!),
      walletId: WalletId(walletId ?? '975a1475-3074-44dc-90a5-243defd3b43b'),
      apiCode: apiCode ?? '12345',
    );
  }
}
