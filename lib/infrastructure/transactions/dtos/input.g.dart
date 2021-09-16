// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Input _$_$_InputFromJson(Map<String, dynamic> json) {
  return _$_Input(
    prevout: json['prevout'] == null
        ? null
        : Prevout.fromJson(json['prevout'] as Map<String, dynamic>),
    script: json['script'] as String?,
    witness: json['witness'] as String?,
    sequence: json['sequence'] as int?,
    coin: json['coin'] == null
        ? null
        : Coin.fromJson(json['coin'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_InputToJson(_$_Input instance) => <String, dynamic>{
      'prevout': instance.prevout,
      'script': instance.script,
      'witness': instance.witness,
      'sequence': instance.sequence,
      'coin': instance.coin,
    };
