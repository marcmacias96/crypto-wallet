import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/contacts/contact.dart';
import '../../domain/contacts/value_objects.dart';
import '../../domain/core/value_objects.dart';

part 'contact_dto.freezed.dart';
part 'contact_dto.g.dart';

@freezed
class ContactDto with _$ContactDto {
  @JsonSerializable(explicitToJson: true)
  const factory ContactDto({
    required String id,
    required String name,
    required String address,
  }) = _ContactDto;

  factory ContactDto.fromDomain(Contact contact) {
    return ContactDto(
      id: contact.id.getOrCrash(),
      name: contact.name.getOrCrash(),
      address: contact.address.getOrCrash(),
    );
  }
  factory ContactDto.fromJson(Map<String, dynamic> json) =>
      _$ContactDtoFromJson(json);

  factory ContactDto.fromFirestore(DocumentSnapshot doc) =>
      ContactDto.fromJson(doc.data() as Map<String, dynamic>)
          .copyWith(id: doc.id);
}

extension ContactDtoX on ContactDto {
  Contact toDomain() {
    return Contact(
      id: UniqueId.fromUniqueString(id),
      name: Name(name),
      address: Address(address),
    );
  }
}
