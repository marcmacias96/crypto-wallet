import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_failure.freezed.dart';

@freezed
abstract class WalletFailure with _$WalletFailure {
  const factory WalletFailure.unexpected() = _Unexpected;
  const factory WalletFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory WalletFailure.unableToUpdate() = _UnableToUpdate;
}
