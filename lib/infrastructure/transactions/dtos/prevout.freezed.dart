// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'prevout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Prevout _$PrevoutFromJson(Map<String, dynamic> json) {
  return _Prevout.fromJson(json);
}

/// @nodoc
class _$PrevoutTearOff {
  const _$PrevoutTearOff();

  _Prevout call({String? hash, int? index}) {
    return _Prevout(
      hash: hash,
      index: index,
    );
  }

  Prevout fromJson(Map<String, Object> json) {
    return Prevout.fromJson(json);
  }
}

/// @nodoc
const $Prevout = _$PrevoutTearOff();

/// @nodoc
mixin _$Prevout {
  String? get hash => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrevoutCopyWith<Prevout> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrevoutCopyWith<$Res> {
  factory $PrevoutCopyWith(Prevout value, $Res Function(Prevout) then) =
      _$PrevoutCopyWithImpl<$Res>;
  $Res call({String? hash, int? index});
}

/// @nodoc
class _$PrevoutCopyWithImpl<$Res> implements $PrevoutCopyWith<$Res> {
  _$PrevoutCopyWithImpl(this._value, this._then);

  final Prevout _value;
  // ignore: unused_field
  final $Res Function(Prevout) _then;

  @override
  $Res call({
    Object? hash = freezed,
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$PrevoutCopyWith<$Res> implements $PrevoutCopyWith<$Res> {
  factory _$PrevoutCopyWith(_Prevout value, $Res Function(_Prevout) then) =
      __$PrevoutCopyWithImpl<$Res>;
  @override
  $Res call({String? hash, int? index});
}

/// @nodoc
class __$PrevoutCopyWithImpl<$Res> extends _$PrevoutCopyWithImpl<$Res>
    implements _$PrevoutCopyWith<$Res> {
  __$PrevoutCopyWithImpl(_Prevout _value, $Res Function(_Prevout) _then)
      : super(_value, (v) => _then(v as _Prevout));

  @override
  _Prevout get _value => super._value as _Prevout;

  @override
  $Res call({
    Object? hash = freezed,
    Object? index = freezed,
  }) {
    return _then(_Prevout(
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Prevout implements _Prevout {
  _$_Prevout({this.hash, this.index});

  factory _$_Prevout.fromJson(Map<String, dynamic> json) =>
      _$_$_PrevoutFromJson(json);

  @override
  final String? hash;
  @override
  final int? index;

  @override
  String toString() {
    return 'Prevout(hash: $hash, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Prevout &&
            (identical(other.hash, hash) ||
                const DeepCollectionEquality().equals(other.hash, hash)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hash) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$PrevoutCopyWith<_Prevout> get copyWith =>
      __$PrevoutCopyWithImpl<_Prevout>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PrevoutToJson(this);
  }
}

abstract class _Prevout implements Prevout {
  factory _Prevout({String? hash, int? index}) = _$_Prevout;

  factory _Prevout.fromJson(Map<String, dynamic> json) = _$_Prevout.fromJson;

  @override
  String? get hash => throw _privateConstructorUsedError;
  @override
  int? get index => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PrevoutCopyWith<_Prevout> get copyWith =>
      throw _privateConstructorUsedError;
}
