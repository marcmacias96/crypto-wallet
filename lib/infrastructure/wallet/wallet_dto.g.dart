// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalletDto _$_$_WalletDtoFromJson(Map<String, dynamic> json) {
  return _$_WalletDto(
    id: json['id'] as String,
    address: json['address'] as String,
    name: json['name'] as String?,
    mnemonic: json['mnemonic'] as String,
    isDefault: json['is_default'] as bool,
    walletId: json['wallet_id'] as String,
  );
}

Map<String, dynamic> _$_$_WalletDtoToJson(_$_WalletDto instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'address': instance.address,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  val['mnemonic'] = instance.mnemonic;
  val['is_default'] = instance.isDefault;
  val['wallet_id'] = instance.walletId;
  return val;
}
