// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'transaction_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TransactionListEventTearOff {
  const _$TransactionListEventTearOff();

  FetchTransactions fetchTransactions() {
    return const FetchTransactions();
  }

  _TransactionsRecived transactionsRecived(
      Either<TransactionFailure, KtList<Transaction>> failureOrTransactions) {
    return _TransactionsRecived(
      failureOrTransactions,
    );
  }
}

/// @nodoc
const $TransactionListEvent = _$TransactionListEventTearOff();

/// @nodoc
mixin _$TransactionListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTransactions,
    required TResult Function(
            Either<TransactionFailure, KtList<Transaction>>
                failureOrTransactions)
        transactionsRecived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTransactions,
    TResult Function(
            Either<TransactionFailure, KtList<Transaction>>
                failureOrTransactions)?
        transactionsRecived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTransactions value) fetchTransactions,
    required TResult Function(_TransactionsRecived value) transactionsRecived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTransactions value)? fetchTransactions,
    TResult Function(_TransactionsRecived value)? transactionsRecived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionListEventCopyWith<$Res> {
  factory $TransactionListEventCopyWith(TransactionListEvent value,
          $Res Function(TransactionListEvent) then) =
      _$TransactionListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionListEventCopyWithImpl<$Res>
    implements $TransactionListEventCopyWith<$Res> {
  _$TransactionListEventCopyWithImpl(this._value, this._then);

  final TransactionListEvent _value;
  // ignore: unused_field
  final $Res Function(TransactionListEvent) _then;
}

/// @nodoc
abstract class $FetchTransactionsCopyWith<$Res> {
  factory $FetchTransactionsCopyWith(
          FetchTransactions value, $Res Function(FetchTransactions) then) =
      _$FetchTransactionsCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchTransactionsCopyWithImpl<$Res>
    extends _$TransactionListEventCopyWithImpl<$Res>
    implements $FetchTransactionsCopyWith<$Res> {
  _$FetchTransactionsCopyWithImpl(
      FetchTransactions _value, $Res Function(FetchTransactions) _then)
      : super(_value, (v) => _then(v as FetchTransactions));

  @override
  FetchTransactions get _value => super._value as FetchTransactions;
}

/// @nodoc
class _$FetchTransactions implements FetchTransactions {
  const _$FetchTransactions();

  @override
  String toString() {
    return 'TransactionListEvent.fetchTransactions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchTransactions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTransactions,
    required TResult Function(
            Either<TransactionFailure, KtList<Transaction>>
                failureOrTransactions)
        transactionsRecived,
  }) {
    return fetchTransactions();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTransactions,
    TResult Function(
            Either<TransactionFailure, KtList<Transaction>>
                failureOrTransactions)?
        transactionsRecived,
    required TResult orElse(),
  }) {
    if (fetchTransactions != null) {
      return fetchTransactions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTransactions value) fetchTransactions,
    required TResult Function(_TransactionsRecived value) transactionsRecived,
  }) {
    return fetchTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTransactions value)? fetchTransactions,
    TResult Function(_TransactionsRecived value)? transactionsRecived,
    required TResult orElse(),
  }) {
    if (fetchTransactions != null) {
      return fetchTransactions(this);
    }
    return orElse();
  }
}

abstract class FetchTransactions implements TransactionListEvent {
  const factory FetchTransactions() = _$FetchTransactions;
}

/// @nodoc
abstract class _$TransactionsRecivedCopyWith<$Res> {
  factory _$TransactionsRecivedCopyWith(_TransactionsRecived value,
          $Res Function(_TransactionsRecived) then) =
      __$TransactionsRecivedCopyWithImpl<$Res>;
  $Res call(
      {Either<TransactionFailure, KtList<Transaction>> failureOrTransactions});
}

/// @nodoc
class __$TransactionsRecivedCopyWithImpl<$Res>
    extends _$TransactionListEventCopyWithImpl<$Res>
    implements _$TransactionsRecivedCopyWith<$Res> {
  __$TransactionsRecivedCopyWithImpl(
      _TransactionsRecived _value, $Res Function(_TransactionsRecived) _then)
      : super(_value, (v) => _then(v as _TransactionsRecived));

  @override
  _TransactionsRecived get _value => super._value as _TransactionsRecived;

  @override
  $Res call({
    Object? failureOrTransactions = freezed,
  }) {
    return _then(_TransactionsRecived(
      failureOrTransactions == freezed
          ? _value.failureOrTransactions
          : failureOrTransactions // ignore: cast_nullable_to_non_nullable
              as Either<TransactionFailure, KtList<Transaction>>,
    ));
  }
}

/// @nodoc
class _$_TransactionsRecived implements _TransactionsRecived {
  const _$_TransactionsRecived(this.failureOrTransactions);

  @override
  final Either<TransactionFailure, KtList<Transaction>> failureOrTransactions;

  @override
  String toString() {
    return 'TransactionListEvent.transactionsRecived(failureOrTransactions: $failureOrTransactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionsRecived &&
            (identical(other.failureOrTransactions, failureOrTransactions) ||
                const DeepCollectionEquality().equals(
                    other.failureOrTransactions, failureOrTransactions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrTransactions);

  @JsonKey(ignore: true)
  @override
  _$TransactionsRecivedCopyWith<_TransactionsRecived> get copyWith =>
      __$TransactionsRecivedCopyWithImpl<_TransactionsRecived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTransactions,
    required TResult Function(
            Either<TransactionFailure, KtList<Transaction>>
                failureOrTransactions)
        transactionsRecived,
  }) {
    return transactionsRecived(failureOrTransactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTransactions,
    TResult Function(
            Either<TransactionFailure, KtList<Transaction>>
                failureOrTransactions)?
        transactionsRecived,
    required TResult orElse(),
  }) {
    if (transactionsRecived != null) {
      return transactionsRecived(failureOrTransactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTransactions value) fetchTransactions,
    required TResult Function(_TransactionsRecived value) transactionsRecived,
  }) {
    return transactionsRecived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTransactions value)? fetchTransactions,
    TResult Function(_TransactionsRecived value)? transactionsRecived,
    required TResult orElse(),
  }) {
    if (transactionsRecived != null) {
      return transactionsRecived(this);
    }
    return orElse();
  }
}

abstract class _TransactionsRecived implements TransactionListEvent {
  const factory _TransactionsRecived(
      Either<TransactionFailure, KtList<Transaction>>
          failureOrTransactions) = _$_TransactionsRecived;

  Either<TransactionFailure, KtList<Transaction>> get failureOrTransactions =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TransactionsRecivedCopyWith<_TransactionsRecived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TransactionListStateTearOff {
  const _$TransactionListStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(KtList<Transaction> transactions) {
    return _LoadSuccess(
      transactions,
    );
  }

  _LoadFailure loadFailure() {
    return const _LoadFailure();
  }
}

/// @nodoc
const $TransactionListState = _$TransactionListStateTearOff();

/// @nodoc
mixin _$TransactionListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Transaction> transactions) loadSuccess,
    required TResult Function() loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Transaction> transactions)? loadSuccess,
    TResult Function()? loadFailure,
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
abstract class $TransactionListStateCopyWith<$Res> {
  factory $TransactionListStateCopyWith(TransactionListState value,
          $Res Function(TransactionListState) then) =
      _$TransactionListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionListStateCopyWithImpl<$Res>
    implements $TransactionListStateCopyWith<$Res> {
  _$TransactionListStateCopyWithImpl(this._value, this._then);

  final TransactionListState _value;
  // ignore: unused_field
  final $Res Function(TransactionListState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$TransactionListStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TransactionListState.initial()';
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
    required TResult Function(KtList<Transaction> transactions) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Transaction> transactions)? loadSuccess,
    TResult Function()? loadFailure,
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

abstract class _Initial implements TransactionListState {
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
    extends _$TransactionListStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'TransactionListState.loadInProgress()';
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
    required TResult Function(KtList<Transaction> transactions) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Transaction> transactions)? loadSuccess,
    TResult Function()? loadFailure,
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

abstract class _LoadInProgress implements TransactionListState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Transaction> transactions});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$TransactionListStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? transactions = freezed,
  }) {
    return _then(_LoadSuccess(
      transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as KtList<Transaction>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.transactions);

  @override
  final KtList<Transaction> transactions;

  @override
  String toString() {
    return 'TransactionListState.loadSuccess(transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.transactions, transactions) ||
                const DeepCollectionEquality()
                    .equals(other.transactions, transactions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(transactions);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Transaction> transactions) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadSuccess(transactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Transaction> transactions)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(transactions);
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

abstract class _LoadSuccess implements TransactionListState {
  const factory _LoadSuccess(KtList<Transaction> transactions) = _$_LoadSuccess;

  KtList<Transaction> get transactions => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$TransactionListStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure();

  @override
  String toString() {
    return 'TransactionListState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Transaction> transactions) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Transaction> transactions)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure();
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

abstract class _LoadFailure implements TransactionListState {
  const factory _LoadFailure() = _$_LoadFailure;
}
