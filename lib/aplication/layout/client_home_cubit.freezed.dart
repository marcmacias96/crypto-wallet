// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'client_home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ClientHomeStateTearOff {
  const _$ClientHomeStateTearOff();

  _ClientHomeState call(
      {required int position, required PageController controller}) {
    return _ClientHomeState(
      position: position,
      controller: controller,
    );
  }
}

/// @nodoc
const $ClientHomeState = _$ClientHomeStateTearOff();

/// @nodoc
mixin _$ClientHomeState {
  int get position => throw _privateConstructorUsedError;
  PageController get controller => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClientHomeStateCopyWith<ClientHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientHomeStateCopyWith<$Res> {
  factory $ClientHomeStateCopyWith(
          ClientHomeState value, $Res Function(ClientHomeState) then) =
      _$ClientHomeStateCopyWithImpl<$Res>;
  $Res call({int position, PageController controller});
}

/// @nodoc
class _$ClientHomeStateCopyWithImpl<$Res>
    implements $ClientHomeStateCopyWith<$Res> {
  _$ClientHomeStateCopyWithImpl(this._value, this._then);

  final ClientHomeState _value;
  // ignore: unused_field
  final $Res Function(ClientHomeState) _then;

  @override
  $Res call({
    Object? position = freezed,
    Object? controller = freezed,
  }) {
    return _then(_value.copyWith(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      controller: controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as PageController,
    ));
  }
}

/// @nodoc
abstract class _$ClientHomeStateCopyWith<$Res>
    implements $ClientHomeStateCopyWith<$Res> {
  factory _$ClientHomeStateCopyWith(
          _ClientHomeState value, $Res Function(_ClientHomeState) then) =
      __$ClientHomeStateCopyWithImpl<$Res>;
  @override
  $Res call({int position, PageController controller});
}

/// @nodoc
class __$ClientHomeStateCopyWithImpl<$Res>
    extends _$ClientHomeStateCopyWithImpl<$Res>
    implements _$ClientHomeStateCopyWith<$Res> {
  __$ClientHomeStateCopyWithImpl(
      _ClientHomeState _value, $Res Function(_ClientHomeState) _then)
      : super(_value, (v) => _then(v as _ClientHomeState));

  @override
  _ClientHomeState get _value => super._value as _ClientHomeState;

  @override
  $Res call({
    Object? position = freezed,
    Object? controller = freezed,
  }) {
    return _then(_ClientHomeState(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      controller: controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as PageController,
    ));
  }
}

/// @nodoc
class _$_ClientHomeState implements _ClientHomeState {
  const _$_ClientHomeState({required this.position, required this.controller});

  @override
  final int position;
  @override
  final PageController controller;

  @override
  String toString() {
    return 'ClientHomeState(position: $position, controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ClientHomeState &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.controller, controller) ||
                const DeepCollectionEquality()
                    .equals(other.controller, controller)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(controller);

  @JsonKey(ignore: true)
  @override
  _$ClientHomeStateCopyWith<_ClientHomeState> get copyWith =>
      __$ClientHomeStateCopyWithImpl<_ClientHomeState>(this, _$identity);
}

abstract class _ClientHomeState implements ClientHomeState {
  const factory _ClientHomeState(
      {required int position,
      required PageController controller}) = _$_ClientHomeState;

  @override
  int get position => throw _privateConstructorUsedError;
  @override
  PageController get controller => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ClientHomeStateCopyWith<_ClientHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
