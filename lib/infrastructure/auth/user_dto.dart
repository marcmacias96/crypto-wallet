import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/auth/user.dart';
import '../../domain/auth/value_objects.dart';
import '../../domain/core/value_objects.dart';
import '../../domain/wallet/value_objects.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const UserDto._();
  @JsonSerializable(explicitToJson: true)
  factory UserDto(
      {@JsonKey(ignore: true) String? id,
      String? name,
      String? email}) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  factory UserDto.fromFirestore(DocumentSnapshot? doc) =>
      UserDto.fromJson(doc!.data() as Map<String, dynamic>)
          .copyWith(id: doc.id);

  User toDomain() {
    return User(
      name: StringSingleLine(name ?? 'no-name'),
      id: UniqueId.fromUniqueString(id!),
      email: EmailAddress(email ?? 'user@startfit.tech'),
    );
  }
}
