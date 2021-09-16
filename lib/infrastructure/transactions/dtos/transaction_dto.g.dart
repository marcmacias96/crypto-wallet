// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionDto _$_$_TransactionDtoFromJson(Map<String, dynamic> json) {
  return _$_TransactionDto(
    hash: json['hash'] as String?,
    witnessHash: json['witnessHash'] as String?,
    fee: json['fee'] as int?,
    rate: json['rate'] as int?,
    mtime: json['mtime'] as int?,
    height: json['height'] as int?,
    block: json['block'] as String?,
    time: json['time'] as int?,
    index: json['index'] as int?,
    version: json['version'] as int?,
    inputs: (json['inputs'] as List<dynamic>?)
        ?.map((e) => Input.fromJson(e as Map<String, dynamic>))
        .toList(),
    outputs: (json['outputs'] as List<dynamic>?)
        ?.map((e) => Output.fromJson(e as Map<String, dynamic>))
        .toList(),
    locktime: json['locktime'] as int?,
  );
}

Map<String, dynamic> _$_$_TransactionDtoToJson(_$_TransactionDto instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'witnessHash': instance.witnessHash,
      'fee': instance.fee,
      'rate': instance.rate,
      'mtime': instance.mtime,
      'height': instance.height,
      'block': instance.block,
      'time': instance.time,
      'index': instance.index,
      'version': instance.version,
      'inputs': instance.inputs,
      'outputs': instance.outputs,
      'locktime': instance.locktime,
    };
