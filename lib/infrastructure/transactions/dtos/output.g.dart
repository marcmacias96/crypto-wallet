// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Output _$_$_OutputFromJson(Map<String, dynamic> json) {
  return _$_Output(
    value: (json['value'] as num?)?.toDouble(),
    script: json['script'] as String?,
    address: json['address'] as String?,
  );
}

Map<String, dynamic> _$_$_OutputToJson(_$_Output instance) => <String, dynamic>{
      'value': instance.value,
      'script': instance.script,
      'address': instance.address,
    };
