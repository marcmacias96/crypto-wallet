part of 'wallet_form_bloc.dart';

@freezed
class WalletFormEvent with _$WalletFormEvent {
  const factory WalletFormEvent.initialized({bool? isNew}) = Initialized;
  const factory WalletFormEvent.nameChanged(String name) = NameChanged;
  const factory WalletFormEvent.idWalletChanged(String walletId) =
      IdWalletChanged;
  const factory WalletFormEvent.passwordChanged(String password) =
      PasswordChanged;
  const factory WalletFormEvent.createWallet() = CreateWallet;
  const factory WalletFormEvent.saved() = _Saved;
}
