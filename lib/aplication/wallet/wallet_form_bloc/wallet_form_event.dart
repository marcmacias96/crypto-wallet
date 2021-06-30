part of 'wallet_form_bloc.dart';

@freezed
class WalletFormEvent with _$WalletFormEvent {
  const factory WalletFormEvent.initialized() = Initialized;

  const factory WalletFormEvent.saved() = Saved;
}
