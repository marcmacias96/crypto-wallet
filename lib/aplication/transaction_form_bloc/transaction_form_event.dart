part of 'transaction_form_bloc.dart';

@freezed
class TransactionFormEvent with _$TransactionFormEvent {
  const factory TransactionFormEvent.setContact(Contact contact) = SetContact;
  const factory TransactionFormEvent.sendBitcoin() = SendBitcoin;
}
