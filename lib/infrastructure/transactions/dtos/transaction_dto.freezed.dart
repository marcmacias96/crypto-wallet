// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'transaction_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionDto _$TransactionDtoFromJson(Map<String, dynamic> json) {
  return _TransactionDto.fromJson(json);
}

/// @nodoc
class _$TransactionDtoTearOff {
  const _$TransactionDtoTearOff();

  _TransactionDto call(
      {String? hash,
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
      int? locktime}) {
    return _TransactionDto(
      hash: hash,
      witnessHash: witnessHash,
      fee: fee,
      rate: rate,
      mtime: mtime,
      height: height,
      block: block,
      time: time,
      index: index,
      version: version,
      inputs: inputs,
      outputs: outputs,
      locktime: locktime,
    );
  }

  TransactionDto fromJson(Map<String, Object> json) {
    return TransactionDto.fromJson(json);
  }
}

/// @nodoc
const $TransactionDto = _$TransactionDtoTearOff();

/// @nodoc
mixin _$TransactionDto {
  String? get hash => throw _privateConstructorUsedError;
  String? get witnessHash => throw _privateConstructorUsedError;
  int? get fee => throw _privateConstructorUsedError;
  int? get rate => throw _privateConstructorUsedError;
  int? get mtime => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  String? get block => throw _privateConstructorUsedError;
  int? get time => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;
  int? get version => throw _privateConstructorUsedError;
  List<Input>? get inputs => throw _privateConstructorUsedError;
  List<Output>? get outputs => throw _privateConstructorUsedError;
  int? get locktime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDtoCopyWith<TransactionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDtoCopyWith<$Res> {
  factory $TransactionDtoCopyWith(
          TransactionDto value, $Res Function(TransactionDto) then) =
      _$TransactionDtoCopyWithImpl<$Res>;
  $Res call(
      {String? hash,
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
      int? locktime});
}

/// @nodoc
class _$TransactionDtoCopyWithImpl<$Res>
    implements $TransactionDtoCopyWith<$Res> {
  _$TransactionDtoCopyWithImpl(this._value, this._then);

  final TransactionDto _value;
  // ignore: unused_field
  final $Res Function(TransactionDto) _then;

  @override
  $Res call({
    Object? hash = freezed,
    Object? witnessHash = freezed,
    Object? fee = freezed,
    Object? rate = freezed,
    Object? mtime = freezed,
    Object? height = freezed,
    Object? block = freezed,
    Object? time = freezed,
    Object? index = freezed,
    Object? version = freezed,
    Object? inputs = freezed,
    Object? outputs = freezed,
    Object? locktime = freezed,
  }) {
    return _then(_value.copyWith(
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
      witnessHash: witnessHash == freezed
          ? _value.witnessHash
          : witnessHash // ignore: cast_nullable_to_non_nullable
              as String?,
      fee: fee == freezed
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
      mtime: mtime == freezed
          ? _value.mtime
          : mtime // ignore: cast_nullable_to_non_nullable
              as int?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      block: block == freezed
          ? _value.block
          : block // ignore: cast_nullable_to_non_nullable
              as String?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      inputs: inputs == freezed
          ? _value.inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<Input>?,
      outputs: outputs == freezed
          ? _value.outputs
          : outputs // ignore: cast_nullable_to_non_nullable
              as List<Output>?,
      locktime: locktime == freezed
          ? _value.locktime
          : locktime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$TransactionDtoCopyWith<$Res>
    implements $TransactionDtoCopyWith<$Res> {
  factory _$TransactionDtoCopyWith(
          _TransactionDto value, $Res Function(_TransactionDto) then) =
      __$TransactionDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? hash,
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
      int? locktime});
}

/// @nodoc
class __$TransactionDtoCopyWithImpl<$Res>
    extends _$TransactionDtoCopyWithImpl<$Res>
    implements _$TransactionDtoCopyWith<$Res> {
  __$TransactionDtoCopyWithImpl(
      _TransactionDto _value, $Res Function(_TransactionDto) _then)
      : super(_value, (v) => _then(v as _TransactionDto));

  @override
  _TransactionDto get _value => super._value as _TransactionDto;

  @override
  $Res call({
    Object? hash = freezed,
    Object? witnessHash = freezed,
    Object? fee = freezed,
    Object? rate = freezed,
    Object? mtime = freezed,
    Object? height = freezed,
    Object? block = freezed,
    Object? time = freezed,
    Object? index = freezed,
    Object? version = freezed,
    Object? inputs = freezed,
    Object? outputs = freezed,
    Object? locktime = freezed,
  }) {
    return _then(_TransactionDto(
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
      witnessHash: witnessHash == freezed
          ? _value.witnessHash
          : witnessHash // ignore: cast_nullable_to_non_nullable
              as String?,
      fee: fee == freezed
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as int?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
      mtime: mtime == freezed
          ? _value.mtime
          : mtime // ignore: cast_nullable_to_non_nullable
              as int?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      block: block == freezed
          ? _value.block
          : block // ignore: cast_nullable_to_non_nullable
              as String?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      inputs: inputs == freezed
          ? _value.inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<Input>?,
      outputs: outputs == freezed
          ? _value.outputs
          : outputs // ignore: cast_nullable_to_non_nullable
              as List<Output>?,
      locktime: locktime == freezed
          ? _value.locktime
          : locktime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TransactionDto extends _TransactionDto {
  _$_TransactionDto(
      {this.hash,
      this.witnessHash,
      this.fee,
      this.rate,
      this.mtime,
      this.height,
      this.block,
      this.time,
      this.index,
      this.version,
      this.inputs,
      this.outputs,
      this.locktime})
      : super._();

  factory _$_TransactionDto.fromJson(Map<String, dynamic> json) =>
      _$_$_TransactionDtoFromJson(json);

  @override
  final String? hash;
  @override
  final String? witnessHash;
  @override
  final int? fee;
  @override
  final int? rate;
  @override
  final int? mtime;
  @override
  final int? height;
  @override
  final String? block;
  @override
  final int? time;
  @override
  final int? index;
  @override
  final int? version;
  @override
  final List<Input>? inputs;
  @override
  final List<Output>? outputs;
  @override
  final int? locktime;

  @override
  String toString() {
    return 'TransactionDto(hash: $hash, witnessHash: $witnessHash, fee: $fee, rate: $rate, mtime: $mtime, height: $height, block: $block, time: $time, index: $index, version: $version, inputs: $inputs, outputs: $outputs, locktime: $locktime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionDto &&
            (identical(other.hash, hash) ||
                const DeepCollectionEquality().equals(other.hash, hash)) &&
            (identical(other.witnessHash, witnessHash) ||
                const DeepCollectionEquality()
                    .equals(other.witnessHash, witnessHash)) &&
            (identical(other.fee, fee) ||
                const DeepCollectionEquality().equals(other.fee, fee)) &&
            (identical(other.rate, rate) ||
                const DeepCollectionEquality().equals(other.rate, rate)) &&
            (identical(other.mtime, mtime) ||
                const DeepCollectionEquality().equals(other.mtime, mtime)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.block, block) ||
                const DeepCollectionEquality().equals(other.block, block)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.inputs, inputs) ||
                const DeepCollectionEquality().equals(other.inputs, inputs)) &&
            (identical(other.outputs, outputs) ||
                const DeepCollectionEquality()
                    .equals(other.outputs, outputs)) &&
            (identical(other.locktime, locktime) ||
                const DeepCollectionEquality()
                    .equals(other.locktime, locktime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hash) ^
      const DeepCollectionEquality().hash(witnessHash) ^
      const DeepCollectionEquality().hash(fee) ^
      const DeepCollectionEquality().hash(rate) ^
      const DeepCollectionEquality().hash(mtime) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(block) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(inputs) ^
      const DeepCollectionEquality().hash(outputs) ^
      const DeepCollectionEquality().hash(locktime);

  @JsonKey(ignore: true)
  @override
  _$TransactionDtoCopyWith<_TransactionDto> get copyWith =>
      __$TransactionDtoCopyWithImpl<_TransactionDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionDtoToJson(this);
  }
}

abstract class _TransactionDto extends TransactionDto {
  factory _TransactionDto(
      {String? hash,
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
      int? locktime}) = _$_TransactionDto;
  _TransactionDto._() : super._();

  factory _TransactionDto.fromJson(Map<String, dynamic> json) =
      _$_TransactionDto.fromJson;

  @override
  String? get hash => throw _privateConstructorUsedError;
  @override
  String? get witnessHash => throw _privateConstructorUsedError;
  @override
  int? get fee => throw _privateConstructorUsedError;
  @override
  int? get rate => throw _privateConstructorUsedError;
  @override
  int? get mtime => throw _privateConstructorUsedError;
  @override
  int? get height => throw _privateConstructorUsedError;
  @override
  String? get block => throw _privateConstructorUsedError;
  @override
  int? get time => throw _privateConstructorUsedError;
  @override
  int? get index => throw _privateConstructorUsedError;
  @override
  int? get version => throw _privateConstructorUsedError;
  @override
  List<Input>? get inputs => throw _privateConstructorUsedError;
  @override
  List<Output>? get outputs => throw _privateConstructorUsedError;
  @override
  int? get locktime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionDtoCopyWith<_TransactionDto> get copyWith =>
      throw _privateConstructorUsedError;
}
