import 'package:crypto_wallet/domain/contacts/contact.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';

@freezed
class Transaction with _$Transaction {
  factory Transaction({
    required String to,
    required String from,
    Contact? contact,
    required double value,
    required DateTime dateTime,
  }) = _Transaction;
}
