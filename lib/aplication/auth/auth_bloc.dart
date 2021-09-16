import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import '../../domain/auth/i_auth_facade.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final isSignedInUser = await _authFacade.isSignedInUser();
        if (!isSignedInUser) {
          yield const AuthState.unauthenticated();
        } else {
          final user = await _authFacade.getUser();
          yield* user.fold((l) async* {
            yield l.maybeMap(
                doesNotExist: (_) => const AuthState.withOutWallet(),
                orElse: () => const AuthState.modeFailure());
          }, (user) async* {
            if (true) {}
            yield const AuthState.authenticated();
          });
        }
      },
      signedOut: (e) async* {
        await _authFacade.signOut();
        yield const AuthState.unauthenticated();
      },
    );
  }
}
