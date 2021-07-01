import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/core/firestore_failure.dart';
import '../../../domain/wallet/i_wallet_repository.dart';
import '../../../domain/wallet/wallet.dart';

part 'wallet_form_bloc.freezed.dart';
part 'wallet_form_event.dart';
part 'wallet_form_state.dart';

@injectable
class WalletFormBloc extends Bloc<WalletFormEvent, WalletFormState> {
  final IWalletRepository _walletRepository;

  WalletFormBloc(this._walletRepository) : super(WalletFormState.initial());

  @override
  Stream<WalletFormState> mapEventToState(WalletFormEvent event) async* {
    yield* event.map(initialized: (e) async* {
      yield state.copyWith(
          isLoading: false, saveFailureOrSuccessOption: none());
    }, saved: (e) async* {
      Either<FirestoreFailure, Unit> failureOrSuccess;
      yield state.copyWith(isSaving: true, saveFailureOrSuccessOption: none());

      failureOrSuccess = await _walletRepository.create(state.wallet);

      yield state.copyWith(
          isSaving: false,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess));
    });
  }
}
