// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import 'aplication/auth/auth_bloc.dart' as _i18;
import 'aplication/auth/sign_in_form/sign_in_form_bloc.dart' as _i15;
import 'aplication/coin_list_bloc/coin_list_bloc.dart' as _i19;
import 'aplication/contact/contact_form_bloc/contact_form_bloc.dart' as _i20;
import 'aplication/contact/contact_list_bloc/contact_list_bloc.dart' as _i21;
import 'aplication/wallet/wallet_form_bloc/wallet_form_bloc.dart' as _i16;
import 'aplication/wallet/wallet_watch_bloc/wallet_watch_bloc.dart' as _i17;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'domain/coin/i_coin_repository.dart' as _i9;
import 'domain/contacts/i_contact_repository.dart' as _i11;
import 'domain/wallet/i_wallet_repository.dart' as _i13;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i8;
import 'infrastructure/coin/coin_repository.dart' as _i10;
import 'infrastructure/contacts/contact_respository.dart' as _i12;
import 'infrastructure/core/firebase_injectable_module.dart' as _i22;
import 'infrastructure/wallet/wallet_repository.dart'
    as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FacebookAuth>(
      () => firebaseInjectableModule.facebookLogin);
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i7.IAuthFacade>(() => _i8.FirebaseAuthFacade(
      get<_i4.FirebaseAuth>(),
      get<_i6.GoogleSignIn>(),
      get<_i3.FacebookAuth>(),
      get<_i5.FirebaseFirestore>()));
  gh.lazySingleton<_i9.ICoinRepository>(() => _i10.CoinRepository());
  gh.lazySingleton<_i11.IContactRepository>(
      () => _i12.ContactRepository(get<_i5.FirebaseFirestore>()));
  gh.lazySingleton<_i13.IWalletRepository>(
      () => _i14.WalletRepository(get<_i5.FirebaseFirestore>()));
  gh.factory<_i15.SignInFormBloc>(
      () => _i15.SignInFormBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i16.WalletFormBloc>(
      () => _i16.WalletFormBloc(get<_i13.IWalletRepository>()));
  gh.factory<_i17.WalletWatchBloc>(
      () => _i17.WalletWatchBloc(get<_i13.IWalletRepository>()));
  gh.factory<_i18.AuthBloc>(() => _i18.AuthBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i19.CoinListBloc>(
      () => _i19.CoinListBloc(get<_i9.ICoinRepository>()));
  gh.factory<_i20.ContactFormBloc>(
      () => _i20.ContactFormBloc(get<_i11.IContactRepository>()));
  gh.factory<_i21.ContactListBloc>(
      () => _i21.ContactListBloc(get<_i11.IContactRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i22.FirebaseInjectableModule {}
