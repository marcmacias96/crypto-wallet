import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/transaction/transaction.dart';
import '../../../utils/utils.dart';
import 'input.dart';
import 'output.dart';

part 'transaction_dto.freezed.dart';
part 'transaction_dto.g.dart';

@freezed
class TransactionDto with _$TransactionDto {
  const TransactionDto._();
  factory TransactionDto({
    String? hash,
    String? witnessHash,
    int? fee,
    int? rate,
    int? mtime,
    int? height,
    String? block,
    int? time,
    int? index,
    int? version,
    List<Input>? inputs,
    List<Output>? outputs,
    int? locktime,
  }) = _TransactionDto;

  factory TransactionDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionDtoFromJson(json);

  Transaction toDomain() {
    return Transaction(
      to: outputs!.first.address!,
      from: inputs!.first.coin!.address!,
      value: outputs!.first.value!.toBTC(),
      dateTime: DateTime.fromMillisecondsSinceEpoch(time!),
    );
  }
}
