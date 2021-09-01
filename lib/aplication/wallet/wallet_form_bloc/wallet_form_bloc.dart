import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:bip39/bip39.dart' as bip39;

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
    yield* event.map(
      initialized: (e) async* {
        yield state.copyWith(
            isLoading: false,
            saveFailureOrSuccessOption: none(),
            isNew: e.isNew!);
      },
      nameChanged: (e) async* {
        yield state.copyWith(
            wallet: state.wallet.copyWith(name: Name(e.name)),
            saveFailureOrSuccessOption: none());
      },
      createWallet: (e) async* {
        var mnemonic = await bip39.generateMnemonic();
        yield state.copyWith(
            isSaving: true,
            isLoading: true,
            saveFailureOrSuccessOption: none(),
            wallet: state.wallet.copyWith(
              mnemonic: mnemonic,
            ));

        var walletReponse = await _walletRepository.createWallet(mnemonic);
        yield state.copyWith(
            isSaving: false,
            isLoading: false,
            saveFailureOrSuccessOption: none(),
            wallet: state.wallet.copyWith(
              walletId: walletReponse.xpub,
            ));
      },
      createAddress: (e) async* {
        yield state.copyWith(
          isSaving: true,
          isLoading: true,
          saveFailureOrSuccessOption: none(),
        );

        var address = await _walletRepository.createAddress(state.wallet);
        var privateKey =
            await _walletRepository.createPrivateKay(state.wallet.mnemonic);

        yield state.copyWith(
            isSaving: true,
            isLoading: true,
            saveFailureOrSuccessOption: none(),
            wallet: state.wallet.copyWith(
              address: address.address,
              privateKey: privateKey.key,
            ));

        add(_Save());
      },
      save: (e) async* {
        Either<FirestoreFailure, Unit>? failureOrSuccess;
        final isNameValid = state.wallet.name!.isValid();

        if (isNameValid) {
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
      },
    );
  }
}
