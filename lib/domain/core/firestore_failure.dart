import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_failure.freezed.dart';

@freezed
class FirestoreFailure with _$FirestoreFailure {
  const factory FirestoreFailure.unexpected() = Unexpected;
  const factory FirestoreFailure.userNameAlreadyExits() = UserNameAlreadyExits;
  const factory FirestoreFailure.insufficientPermissions() =
      InsufficientPermissions;
  const factory FirestoreFailure.unableToUpdate() = UnableToUpdate;
  const factory FirestoreFailure.doesNotExist() = DoesNotExist;
  const factory FirestoreFailure.noInternet() = NoInternet;
  const factory FirestoreFailure.noPhotos() = NoPhotos;
}
