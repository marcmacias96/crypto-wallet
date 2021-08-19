// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'coin_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CoinListEventTearOff {
  const _$CoinListEventTearOff();

  FetchStarted fetchStarted() {
    return const FetchStarted();
  }

  _CoinsRecived coinsRecived(Either<CoinFailure, KtList<Coin>> failureOrCoins) {
    return _CoinsRecived(
      failureOrCoins,
    );
  }
}

/// @nodoc
const $CoinListEvent = _$CoinListEventTearOff();

/// @nodoc
mixin _$CoinListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchStarted,
    required TResult Function(Either<CoinFailure, KtList<Coin>> failureOrCoins)
        coinsRecived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchStarted,
    TResult Function(Either<CoinFailure, KtList<Coin>> failureOrCoins)?
        coinsRecived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchStarted value) fetchStarted,
    required TResult Function(_CoinsRecived value) coinsRecived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchStarted value)? fetchStarted,
    TResult Function(_CoinsRecived value)? coinsRecived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinListEventCopyWith<$Res> {
  factory $CoinListEventCopyWith(
          CoinListEvent value, $Res Function(CoinListEvent) then) =
      _$CoinListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoinListEventCopyWithImpl<$Res>
    implements $CoinListEventCopyWith<$Res> {
  _$CoinListEventCopyWithImpl(this._value, this._then);

  final CoinListEvent _value;
  // ignore: unused_field
  final $Res Function(CoinListEvent) _then;
}

/// @nodoc
abstract class $FetchStartedCopyWith<$Res> {
  factory $FetchStartedCopyWith(
          FetchStarted value, $Res Function(FetchStarted) then) =
      _$FetchStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchStartedCopyWithImpl<$Res> extends _$CoinListEventCopyWithImpl<$Res>
    implements $FetchStartedCopyWith<$Res> {
  _$FetchStartedCopyWithImpl(
      FetchStarted _value, $Res Function(FetchStarted) _then)
      : super(_value, (v) => _then(v as FetchStarted));

  @override
  FetchStarted get _value => super._value as FetchStarted;
}

/// @nodoc
class _$FetchStarted with DiagnosticableTreeMixin implements FetchStarted {
  const _$FetchStarted();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CoinListEvent.fetchStarted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CoinListEvent.fetchStarted'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchStarted,
    required TResult Function(Either<CoinFailure, KtList<Coin>> failureOrCoins)
        coinsRecived,
  }) {
    return fetchStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchStarted,
    TResult Function(Either<CoinFailure, KtList<Coin>> failureOrCoins)?
        coinsRecived,
    required TResult orElse(),
  }) {
    if (fetchStarted != null) {
      return fetchStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchStarted value) fetchStarted,
    required TResult Function(_CoinsRecived value) coinsRecived,
  }) {
    return fetchStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchStarted value)? fetchStarted,
    TResult Function(_CoinsRecived value)? coinsRecived,
    required TResult orElse(),
  }) {
    if (fetchStarted != null) {
      return fetchStarted(this);
    }
    return orElse();
  }
}

abstract class FetchStarted implements CoinListEvent {
  const factory FetchStarted() = _$FetchStarted;
}

/// @nodoc
abstract class _$CoinsRecivedCopyWith<$Res> {
  factory _$CoinsRecivedCopyWith(
          _CoinsRecived value, $Res Function(_CoinsRecived) then) =
      __$CoinsRecivedCopyWithImpl<$Res>;
  $Res call({Either<CoinFailure, KtList<Coin>> failureOrCoins});
}

/// @nodoc
class __$CoinsRecivedCopyWithImpl<$Res>
    extends _$CoinListEventCopyWithImpl<$Res>
    implements _$CoinsRecivedCopyWith<$Res> {
  __$CoinsRecivedCopyWithImpl(
      _CoinsRecived _value, $Res Function(_CoinsRecived) _then)
      : super(_value, (v) => _then(v as _CoinsRecived));

  @override
  _CoinsRecived get _value => super._value as _CoinsRecived;

  @override
  $Res call({
    Object? failureOrCoins = freezed,
  }) {
    return _then(_CoinsRecived(
      failureOrCoins == freezed
          ? _value.failureOrCoins
          : failureOrCoins // ignore: cast_nullable_to_non_nullable
              as Either<CoinFailure, KtList<Coin>>,
    ));
  }
}

/// @nodoc
class _$_CoinsRecived with DiagnosticableTreeMixin implements _CoinsRecived {
  const _$_CoinsRecived(this.failureOrCoins);

  @override
  final Either<CoinFailure, KtList<Coin>> failureOrCoins;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CoinListEvent.coinsRecived(failureOrCoins: $failureOrCoins)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CoinListEvent.coinsRecived'))
      ..add(DiagnosticsProperty('failureOrCoins', failureOrCoins));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CoinsRecived &&
            (identical(other.failureOrCoins, failureOrCoins) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrCoins, failureOrCoins)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrCoins);

  @JsonKey(ignore: true)
  @override
  _$CoinsRecivedCopyWith<_CoinsRecived> get copyWith =>
      __$CoinsRecivedCopyWithImpl<_CoinsRecived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchStarted,
    required TResult Function(Either<CoinFailure, KtList<Coin>> failureOrCoins)
        coinsRecived,
  }) {
    return coinsRecived(failureOrCoins);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchStarted,
    TResult Function(Either<CoinFailure, KtList<Coin>> failureOrCoins)?
        coinsRecived,
    required TResult orElse(),
  }) {
    if (coinsRecived != null) {
      return coinsRecived(failureOrCoins);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchStarted value) fetchStarted,
    required TResult Function(_CoinsRecived value) coinsRecived,
  }) {
    return coinsRecived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchStarted value)? fetchStarted,
    TResult Function(_CoinsRecived value)? coinsRecived,
    required TResult orElse(),
  }) {
    if (coinsRecived != null) {
      return coinsRecived(this);
    }
    return orElse();
  }
}

abstract class _CoinsRecived implements CoinListEvent {
  const factory _CoinsRecived(
      Either<CoinFailure, KtList<Coin>> failureOrCoins) = _$_CoinsRecived;

  Either<CoinFailure, KtList<Coin>> get failureOrCoins =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CoinsRecivedCopyWith<_CoinsRecived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CoinListStateTearOff {
  const _$CoinListStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(KtList<Coin> coins) {
    return _LoadSuccess(
      coins,
    );
  }

  _LoadFailure loadFailure(CoinFailure failure) {
    return _LoadFailure(
      failure,
    );
  }
}

/// @nodoc
const $CoinListState = _$CoinListStateTearOff();

/// @nodoc
mixin _$CoinListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Coin> coins) loadSuccess,
    required TResult Function(CoinFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Coin> coins)? loadSuccess,
    TResult Function(CoinFailure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinListStateCopyWith<$Res> {
  factory $CoinListStateCopyWith(
          CoinListState value, $Res Function(CoinListState) then) =
      _$CoinListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoinListStateCopyWithImpl<$Res>
    implements $CoinListStateCopyWith<$Res> {
  _$CoinListStateCopyWithImpl(this._value, this._then);

  final CoinListState _value;
  // ignore: unused_field
  final $Res Function(CoinListState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CoinListStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CoinListState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CoinListState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Coin> coins) loadSuccess,
    required TResult Function(CoinFailure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Coin> coins)? loadSuccess,
    TResult Function(CoinFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CoinListState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$CoinListStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress
    with DiagnosticableTreeMixin
    implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CoinListState.loadInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CoinListState.loadInProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Coin> coins) loadSuccess,
    required TResult Function(CoinFailure failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Coin> coins)? loadSuccess,
    TResult Function(CoinFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements CoinListState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Coin> coins});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$CoinListStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? coins = freezed,
  }) {
    return _then(_LoadSuccess(
      coins == freezed
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as KtList<Coin>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess with DiagnosticableTreeMixin implements _LoadSuccess {
  const _$_LoadSuccess(this.coins);

  @override
  final KtList<Coin> coins;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CoinListState.loadSuccess(coins: $coins)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CoinListState.loadSuccess'))
      ..add(DiagnosticsProperty('coins', coins));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.coins, coins) ||
                const DeepCollectionEquality().equals(other.coins, coins)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(coins);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Coin> coins) loadSuccess,
    required TResult Function(CoinFailure failure) loadFailure,
  }) {
    return loadSuccess(coins);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Coin> coins)? loadSuccess,
    TResult Function(CoinFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(coins);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements CoinListState {
  const factory _LoadSuccess(KtList<Coin> coins) = _$_LoadSuccess;

  KtList<Coin> get coins => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({CoinFailure failure});

  $CoinFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$CoinListStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_LoadFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CoinFailure,
    ));
  }

  @override
  $CoinFailureCopyWith<$Res> get failure {
    return $CoinFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure with DiagnosticableTreeMixin implements _LoadFailure {
  const _$_LoadFailure(this.failure);

  @override
  final CoinFailure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CoinListState.loadFailure(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CoinListState.loadFailure'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Coin> coins) loadSuccess,
    required TResult Function(CoinFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Coin> coins)? loadSuccess,
    TResult Function(CoinFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements CoinListState {
  const factory _LoadFailure(CoinFailure failure) = _$_LoadFailure;

  CoinFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
