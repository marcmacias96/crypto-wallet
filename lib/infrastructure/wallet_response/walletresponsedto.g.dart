// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'walletresponsedto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalletResponseDto _$_$_WalletResponseDtoFromJson(Map<String, dynamic> json) {
  return _$_WalletResponseDto(
    mnemonic: json['mnemonic'] as String,
    xpub: json['xpub'] as String,
  );
}

Map<String, dynamic> _$_$_WalletResponseDtoToJson(
        _$_WalletResponseDto instance) =>
    <String, dynamic>{
      'mnemonic': instance.mnemonic,
      'xpub': instance.xpub,
    };

_$_AddressResponseDto _$_$_AddressResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _$_AddressResponseDto(
    address: json['address'] as String,
  );
}

Map<String, dynamic> _$_$_AddressResponseDtoToJson(
        _$_AddressResponseDto instance) =>
    <String, dynamic>{
      'address': instance.address,
    };

_$_WalletBalanceDto _$_$_WalletBalanceDtoFromJson(Map<String, dynamic> json) {
  return _$_WalletBalanceDto(
    incoming: json['incoming'] as String,
    outgoing: json['outgoing'] as String,
  );
}

Map<String, dynamic> _$_$_WalletBalanceDtoToJson(
        _$_WalletBalanceDto instance) =>
    <String, dynamic>{
      'incoming': instance.incoming,
      'outgoing': instance.outgoing,
    };

_$_PrivateKeyDto _$_$_PrivateKeyDtoFromJson(Map<String, dynamic> json) {
  return _$_PrivateKeyDto(
    key: json['key'] as String,
  );
}

Map<String, dynamic> _$_$_PrivateKeyDtoToJson(_$_PrivateKeyDto instance) =>
    <String, dynamic>{
      'key': instance.key,
    };
