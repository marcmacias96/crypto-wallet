import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_response.freezed.dart';

@freezed
class WalletResponse with _$WalletResponse {
  factory WalletResponse(
      {required String guid,
      required String address,
      required String label}) = _WalletResponse;
}
