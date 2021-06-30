import 'package:crypto_wallet/domain/contacts/contact.dart';
import 'package:crypto_wallet/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/wallet/value_objects.dart';

part 'contact_dto.freezed.dart';
part 'contact_dto.g.dart';

@freezed
class ContactDto with _$ContactDto {
  @JsonSerializable(explicitToJson: true)
  const factory ContactDto({required String name, required String walletId}) =
      _ContactDto;

  factory ContactDto.fromDomain(Contact contact) {
    return ContactDto(
        name: contact.name.getOrCrash(),
        walletId: contact.walletId.getOrCrash());
  }
  factory ContactDto.fromJson(Map<String, dynamic> json) =>
      _$ContactDtoFromJson(json);
}

extension ContactDtoX on ContactDto {
  Contact toDomain() {
    return Contact(name: Name(name), walletId: WalletId(walletId));
  }
}
