// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalletDto _$_$_WalletDtoFromJson(Map<String, dynamic> json) {
  return _$_WalletDto(
    apiCode: json['api_code'] as String,
    name: json['name'] as String,
    walletId: json['wallet_id'] as String,
  );
}

Map<String, dynamic> _$_$_WalletDtoToJson(_$_WalletDto instance) =>
    <String, dynamic>{
      'api_code': instance.apiCode,
      'name': instance.name,
      'wallet_id': instance.walletId,
    };
