import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/core/firestore_failure.dart';
import '../../../domain/core/value_objects.dart';
import '../../../domain/wallet/i_wallet_repository.dart';
import '../../../domain/wallet/value_objects.dart';
import '../../../domain/wallet/wallet.dart';
import '../../../domain/wallet/wallet_failure.dart';
import '../../../domain/wallet_response/wallet_response.dart';

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
          isLoading: false,
          saveFailureOrSuccessOption: none(),
          isNew: e.isNew!);
    }, saved: (e) async* {
      Either<FirestoreFailure, Unit>? failureOrSuccess;
      final isNameValid = state.wallet.name!.isValid();
      final isWalletIdValid = state.wallet.walletId.isValid();
      final isPasswordValid = state.wallet.password.isValid();

      if (isNameValid && isWalletIdValid && isPasswordValid) {
        failureOrSuccess =
            await _walletRepository.saveOnFirestore(state.wallet);
        yield state.copyWith(
            isSaving: false,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess));
      }
      yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess));
    }, idWalletChanged: (e) async* {
      yield state.copyWith(
          wallet: state.wallet.copyWith(walletId: WalletId(e.walletId)),
          saveFailureOrSuccessOption: none());
    }, nameChanged: (e) async* {
      yield state.copyWith(
          wallet: state.wallet.copyWith(name: Name(e.name)),
          saveFailureOrSuccessOption: none());
    }, passwordChanged: (e) async* {
      yield state.copyWith(
          wallet: state.wallet.copyWith(password: Password(e.password)),
          saveFailureOrSuccessOption: none());
    }, createWallet: (e) async* {
      Either<WalletFailure, WalletResponse>? failureOrSuccess;
      yield state.copyWith(
        isSaving: true,
        saveFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await _walletRepository.create(state.wallet);
      final walletResponse =
          failureOrSuccess.getOrElse(() => throw Exception());

      yield state.copyWith(
        wallet: state.wallet.copyWith(
          address: walletResponse.address,
          walletId: WalletId(walletResponse.guid),
        ),
      );
      add(_Saved());
    });
  }
}
