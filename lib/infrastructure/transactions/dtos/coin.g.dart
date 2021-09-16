// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Coin _$_$_CoinFromJson(Map<String, dynamic> json) {
  return _$_Coin(
    version: json['version'] as int?,
    height: json['height'] as int?,
    value: (json['value'] as num?)?.toDouble(),
    script: json['script'] as String?,
    address: json['address'] as String?,
    coinbase: json['coinbase'] as bool?,
  );
}

Map<String, dynamic> _$_$_CoinToJson(_$_Coin instance) => <String, dynamic>{
      'version': instance.version,
      'height': instance.height,
      'value': instance.value,
      'script': instance.script,
      'address': instance.address,
      'coinbase': instance.coinbase,
    };
