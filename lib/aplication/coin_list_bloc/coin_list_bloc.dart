import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../domain/coin/coin.dart';
import '../../domain/coin/coin_failure.dart';
import '../../domain/coin/i_coin_repository.dart';

part 'coin_list_bloc.freezed.dart';
part 'coin_list_event.dart';
part 'coin_list_state.dart';

@injectable
class CoinListBloc extends Bloc<CoinListEvent, CoinListState> {
  CoinListBloc(this._coinRepository) : super(CoinListState.initial());
  final ICoinRepository _coinRepository;
  @override
  Stream<CoinListState> mapEventToState(CoinListEvent gEvent) async* {
    yield* gEvent.map(fetchStarted: (e) async* {
      yield CoinListState.loadInProgress();
      add(CoinListEvent.coinsRecived(await _coinRepository.getPrices()));
    }, coinsRecived: (e) async* {
      yield* e.failureOrCoins.fold((failure) async* {
        yield CoinListState.loadFailure(failure);
      }, (coins) async* {
        yield CoinListState.loadSuccess(coins);
      });
    });
  }
}
