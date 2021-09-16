import 'package:firebase_auth/firebase_auth.dart' as firebase;

import '../../domain/auth/user.dart';
import '../../domain/auth/value_objects.dart';
import '../../domain/core/value_objects.dart';

extension FirebaseUserDomainX on firebase.User {
  User toDomain() {
    return User(
        id: UniqueId.fromUniqueString(uid),
        email: EmailAddress(email!),
        name: Name(displayName ?? 'no-name'));
  }
}
