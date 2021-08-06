// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'value_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  Empty<T> empty<T>({required String failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

  Spaces<T> spaces<T>({required String failedValue}) {
    return Spaces<T>(
      failedValue: failedValue,
    );
  }

  ExceedingLength<T> exceedingLength<T>(
      {required String failedValue, required int max}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }

  MinLength<T> minLength<T>({required String failedValue, required int max}) {
    return MinLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }

  Multiline<T> multiline<T>({required String failedValue}) {
    return Multiline<T>(
      failedValue: failedValue,
    );
  }

  InvalidValue<T> invalidValue<T>({required double failedValue}) {
    return InvalidValue<T>(
      failedValue: failedValue,
    );
  }

  InvalidEmail<T> invalidEmail<T>({required String failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  ShortPassword<T> shortPassword<T>({required String failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) empty,
    required TResult Function(String failedValue) spaces,
    required TResult Function(String failedValue, int max) exceedingLength,
    required TResult Function(String failedValue, int max) minLength,
    required TResult Function(String failedValue) multiline,
    required TResult Function(double failedValue) invalidValue,
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? empty,
    TResult Function(String failedValue)? spaces,
    TResult Function(String failedValue, int max)? exceedingLength,
    TResult Function(String failedValue, int max)? minLength,
    TResult Function(String failedValue)? multiline,
    TResult Function(double failedValue)? invalidValue,
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Spaces<T> value) spaces,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(MinLength<T> value) minLength,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidValue<T> value) invalidValue,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(Spaces<T> value)? spaces,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(MinLength<T> value)? minLength,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidValue<T> value)? invalidValue,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(Empty<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$Empty<T> implements Empty<T> {
  const _$Empty({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) empty,
    required TResult Function(String failedValue) spaces,
    required TResult Function(String failedValue, int max) exceedingLength,
    required TResult Function(String failedValue, int max) minLength,
    required TResult Function(String failedValue) multiline,
    required TResult Function(double failedValue) invalidValue,
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? empty,
    TResult Function(String failedValue)? spaces,
    TResult Function(String failedValue, int max)? exceedingLength,
    TResult Function(String failedValue, int max)? minLength,
    TResult Function(String failedValue)? multiline,
    TResult Function(double failedValue)? invalidValue,
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Spaces<T> value) spaces,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(MinLength<T> value) minLength,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidValue<T> value) invalidValue,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(Spaces<T> value)? spaces,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(MinLength<T> value)? minLength,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidValue<T> value)? invalidValue,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({required String failedValue}) = _$Empty<T>;

  String get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpacesCopyWith<T, $Res> {
  factory $SpacesCopyWith(Spaces<T> value, $Res Function(Spaces<T>) then) =
      _$SpacesCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$SpacesCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $SpacesCopyWith<T, $Res> {
  _$SpacesCopyWithImpl(Spaces<T> _value, $Res Function(Spaces<T>) _then)
      : super(_value, (v) => _then(v as Spaces<T>));

  @override
  Spaces<T> get _value => super._value as Spaces<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(Spaces<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$Spaces<T> implements Spaces<T> {
  const _$Spaces({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.spaces(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Spaces<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $SpacesCopyWith<T, Spaces<T>> get copyWith =>
      _$SpacesCopyWithImpl<T, Spaces<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) empty,
    required TResult Function(String failedValue) spaces,
    required TResult Function(String failedValue, int max) exceedingLength,
    required TResult Function(String failedValue, int max) minLength,
    required TResult Function(String failedValue) multiline,
    required TResult Function(double failedValue) invalidValue,
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
  }) {
    return spaces(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? empty,
    TResult Function(String failedValue)? spaces,
    TResult Function(String failedValue, int max)? exceedingLength,
    TResult Function(String failedValue, int max)? minLength,
    TResult Function(String failedValue)? multiline,
    TResult Function(double failedValue)? invalidValue,
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (spaces != null) {
      return spaces(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Spaces<T> value) spaces,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(MinLength<T> value) minLength,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidValue<T> value) invalidValue,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return spaces(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(Spaces<T> value)? spaces,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(MinLength<T> value)? minLength,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidValue<T> value)? invalidValue,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (spaces != null) {
      return spaces(this);
    }
    return orElse();
  }
}

abstract class Spaces<T> implements ValueFailure<T> {
  const factory Spaces({required String failedValue}) = _$Spaces<T>;

  String get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpacesCopyWith<T, Spaces<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExceedingLengthCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  $Res call({String failedValue, int max});
}

/// @nodoc
class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(ExceedingLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$ExceedingLength<T> implements ExceedingLength<T> {
  const _$ExceedingLength({required this.failedValue, required this.max});

  @override
  final String failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @JsonKey(ignore: true)
  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) empty,
    required TResult Function(String failedValue) spaces,
    required TResult Function(String failedValue, int max) exceedingLength,
    required TResult Function(String failedValue, int max) minLength,
    required TResult Function(String failedValue) multiline,
    required TResult Function(double failedValue) invalidValue,
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
  }) {
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? empty,
    TResult Function(String failedValue)? spaces,
    TResult Function(String failedValue, int max)? exceedingLength,
    TResult Function(String failedValue, int max)? minLength,
    TResult Function(String failedValue)? multiline,
    TResult Function(double failedValue)? invalidValue,
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Spaces<T> value) spaces,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(MinLength<T> value) minLength,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidValue<T> value) invalidValue,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(Spaces<T> value)? spaces,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(MinLength<T> value)? minLength,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidValue<T> value)? invalidValue,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength(
      {required String failedValue, required int max}) = _$ExceedingLength<T>;

  String get failedValue => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinLengthCopyWith<T, $Res> {
  factory $MinLengthCopyWith(
          MinLength<T> value, $Res Function(MinLength<T>) then) =
      _$MinLengthCopyWithImpl<T, $Res>;
  $Res call({String failedValue, int max});
}

/// @nodoc
class _$MinLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $MinLengthCopyWith<T, $Res> {
  _$MinLengthCopyWithImpl(
      MinLength<T> _value, $Res Function(MinLength<T>) _then)
      : super(_value, (v) => _then(v as MinLength<T>));

  @override
  MinLength<T> get _value => super._value as MinLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(MinLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$MinLength<T> implements MinLength<T> {
  const _$MinLength({required this.failedValue, required this.max});

  @override
  final String failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.minLength(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MinLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @JsonKey(ignore: true)
  @override
  $MinLengthCopyWith<T, MinLength<T>> get copyWith =>
      _$MinLengthCopyWithImpl<T, MinLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) empty,
    required TResult Function(String failedValue) spaces,
    required TResult Function(String failedValue, int max) exceedingLength,
    required TResult Function(String failedValue, int max) minLength,
    required TResult Function(String failedValue) multiline,
    required TResult Function(double failedValue) invalidValue,
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
  }) {
    return minLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? empty,
    TResult Function(String failedValue)? spaces,
    TResult Function(String failedValue, int max)? exceedingLength,
    TResult Function(String failedValue, int max)? minLength,
    TResult Function(String failedValue)? multiline,
    TResult Function(double failedValue)? invalidValue,
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (minLength != null) {
      return minLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Spaces<T> value) spaces,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(MinLength<T> value) minLength,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidValue<T> value) invalidValue,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return minLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(Spaces<T> value)? spaces,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(MinLength<T> value)? minLength,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidValue<T> value)? invalidValue,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (minLength != null) {
      return minLength(this);
    }
    return orElse();
  }
}

abstract class MinLength<T> implements ValueFailure<T> {
  const factory MinLength({required String failedValue, required int max}) =
      _$MinLength<T>;

  String get failedValue => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MinLengthCopyWith<T, MinLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultilineCopyWith<T, $Res> {
  factory $MultilineCopyWith(
          Multiline<T> value, $Res Function(Multiline<T>) then) =
      _$MultilineCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$MultilineCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $MultilineCopyWith<T, $Res> {
  _$MultilineCopyWithImpl(
      Multiline<T> _value, $Res Function(Multiline<T>) _then)
      : super(_value, (v) => _then(v as Multiline<T>));

  @override
  Multiline<T> get _value => super._value as Multiline<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(Multiline<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$Multiline<T> implements Multiline<T> {
  const _$Multiline({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.multiline(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Multiline<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $MultilineCopyWith<T, Multiline<T>> get copyWith =>
      _$MultilineCopyWithImpl<T, Multiline<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) empty,
    required TResult Function(String failedValue) spaces,
    required TResult Function(String failedValue, int max) exceedingLength,
    required TResult Function(String failedValue, int max) minLength,
    required TResult Function(String failedValue) multiline,
    required TResult Function(double failedValue) invalidValue,
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
  }) {
    return multiline(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? empty,
    TResult Function(String failedValue)? spaces,
    TResult Function(String failedValue, int max)? exceedingLength,
    TResult Function(String failedValue, int max)? minLength,
    TResult Function(String failedValue)? multiline,
    TResult Function(double failedValue)? invalidValue,
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Spaces<T> value) spaces,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(MinLength<T> value) minLength,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidValue<T> value) invalidValue,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return multiline(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(Spaces<T> value)? spaces,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(MinLength<T> value)? minLength,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidValue<T> value)? invalidValue,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(this);
    }
    return orElse();
  }
}

abstract class Multiline<T> implements ValueFailure<T> {
  const factory Multiline({required String failedValue}) = _$Multiline<T>;

  String get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultilineCopyWith<T, Multiline<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidValueCopyWith<T, $Res> {
  factory $InvalidValueCopyWith(
          InvalidValue<T> value, $Res Function(InvalidValue<T>) then) =
      _$InvalidValueCopyWithImpl<T, $Res>;
  $Res call({double failedValue});
}

/// @nodoc
class _$InvalidValueCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidValueCopyWith<T, $Res> {
  _$InvalidValueCopyWithImpl(
      InvalidValue<T> _value, $Res Function(InvalidValue<T>) _then)
      : super(_value, (v) => _then(v as InvalidValue<T>));

  @override
  InvalidValue<T> get _value => super._value as InvalidValue<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidValue<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
class _$InvalidValue<T> implements InvalidValue<T> {
  const _$InvalidValue({required this.failedValue});

  @override
  final double failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidValue(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidValue<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidValueCopyWith<T, InvalidValue<T>> get copyWith =>
      _$InvalidValueCopyWithImpl<T, InvalidValue<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) empty,
    required TResult Function(String failedValue) spaces,
    required TResult Function(String failedValue, int max) exceedingLength,
    required TResult Function(String failedValue, int max) minLength,
    required TResult Function(String failedValue) multiline,
    required TResult Function(double failedValue) invalidValue,
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
  }) {
    return invalidValue(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? empty,
    TResult Function(String failedValue)? spaces,
    TResult Function(String failedValue, int max)? exceedingLength,
    TResult Function(String failedValue, int max)? minLength,
    TResult Function(String failedValue)? multiline,
    TResult Function(double failedValue)? invalidValue,
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidValue != null) {
      return invalidValue(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Spaces<T> value) spaces,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(MinLength<T> value) minLength,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidValue<T> value) invalidValue,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return invalidValue(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(Spaces<T> value)? spaces,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(MinLength<T> value)? minLength,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidValue<T> value)? invalidValue,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidValue != null) {
      return invalidValue(this);
    }
    return orElse();
  }
}

abstract class InvalidValue<T> implements ValueFailure<T> {
  const factory InvalidValue({required double failedValue}) = _$InvalidValue<T>;

  double get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidValueCopyWith<T, InvalidValue<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) empty,
    required TResult Function(String failedValue) spaces,
    required TResult Function(String failedValue, int max) exceedingLength,
    required TResult Function(String failedValue, int max) minLength,
    required TResult Function(String failedValue) multiline,
    required TResult Function(double failedValue) invalidValue,
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? empty,
    TResult Function(String failedValue)? spaces,
    TResult Function(String failedValue, int max)? exceedingLength,
    TResult Function(String failedValue, int max)? minLength,
    TResult Function(String failedValue)? multiline,
    TResult Function(double failedValue)? invalidValue,
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Spaces<T> value) spaces,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(MinLength<T> value) minLength,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidValue<T> value) invalidValue,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(Spaces<T> value)? spaces,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(MinLength<T> value)? minLength,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidValue<T> value)? invalidValue,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required String failedValue}) = _$InvalidEmail<T>;

  String get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortPasswordCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) empty,
    required TResult Function(String failedValue) spaces,
    required TResult Function(String failedValue, int max) exceedingLength,
    required TResult Function(String failedValue, int max) minLength,
    required TResult Function(String failedValue) multiline,
    required TResult Function(double failedValue) invalidValue,
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? empty,
    TResult Function(String failedValue)? spaces,
    TResult Function(String failedValue, int max)? exceedingLength,
    TResult Function(String failedValue, int max)? minLength,
    TResult Function(String failedValue)? multiline,
    TResult Function(double failedValue)? invalidValue,
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Spaces<T> value) spaces,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(MinLength<T> value) minLength,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidValue<T> value) invalidValue,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(Spaces<T> value)? spaces,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(MinLength<T> value)? minLength,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidValue<T> value)? invalidValue,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({required String failedValue}) =
      _$ShortPassword<T>;

  String get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
