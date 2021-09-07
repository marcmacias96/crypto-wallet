part of 'transaction_form_bloc.dart';

@freezed
class TransactionFormEvent with _$TransactionFormEvent {
  const factory TransactionFormEvent.initialized() = Initialized;
  const factory TransactionFormEvent.walletRecived(
      Either<FirestoreFailure, Wallet> faliureOrWallet) = _WalletRecived;
  const factory TransactionFormEvent.setContact(Contact contact) = SetContact;
  const factory TransactionFormEvent.valueChanged(double value) = ValueChanged;
  const factory TransactionFormEvent.sendBitcoin() = SendBitcoin;
}
