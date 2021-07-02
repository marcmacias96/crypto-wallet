part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.authenticated() = Authenticated;
  const factory AuthState.modeFailure() = ModeFailure;
  const factory AuthState.withOutWallet() = WithOutWallet;
  const factory AuthState.unauthenticated() = Unauthenticated;
}