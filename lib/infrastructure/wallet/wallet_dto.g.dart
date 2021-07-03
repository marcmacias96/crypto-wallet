// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalletDto _$_$_WalletDtoFromJson(Map<String, dynamic> json) {
  return _$_WalletDto(
    apiCode: json['api_code'] as String,
    address: json['address'] as String,
    name: json['name'] as String?,
    password: json['password'] as String,
    walletId: json['wallet_id'] as String,
  );
}

Map<String, dynamic> _$_$_WalletDtoToJson(_$_WalletDto instance) {
  final val = <String, dynamic>{
    'api_code': instance.apiCode,
    'address': instance.address,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  val['password'] = instance.password;
  val['wallet_id'] = instance.walletId;
  return val;
}
