import 'package:freezed_annotation/freezed_annotation.dart';

import '../contacts/contact.dart';

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
