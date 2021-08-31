part of 'wallet_form_bloc.dart';

@freezed
class WalletFormEvent with _$WalletFormEvent {
  const factory WalletFormEvent.initialized({bool? isNew}) = Initialized;
  const factory WalletFormEvent.nameChanged(String name) = NameChanged;
  const factory WalletFormEvent.createAddress() = CreateAddress;
  const factory WalletFormEvent.createWallet() = CreateWallet;
  const factory WalletFormEvent.save() = _Save;
}
