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

import 'aplication/auth/auth_bloc.dart' as _i15;
import 'aplication/auth/sign_in_form/sign_in_form_bloc.dart' as _i13;
import 'aplication/contact/contact_form_bloc/contact_form_bloc.dart' as _i16;
import 'aplication/contact/contact_list_bloc/contact_list_bloc.dart' as _i17;
import 'aplication/wallet/wallet_form_bloc/wallet_form_bloc.dart' as _i14;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'domain/contacts/i_contact_repository.dart' as _i9;
import 'domain/wallet/i_wallet_repository.dart' as _i11;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i8;
import 'infrastructure/contacts/contact_respository.dart' as _i10;
import 'infrastructure/core/firebase_injectable_module.dart' as _i18;
import 'infrastructure/wallet/wallet_repository.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i9.IContactRepository>(
      () => _i10.ContactRepository(get<_i5.FirebaseFirestore>()));
  gh.lazySingleton<_i11.IWalletRepository>(
      () => _i12.WalletRepository(get<_i5.FirebaseFirestore>()));
  gh.factory<_i13.SignInFormBloc>(
      () => _i13.SignInFormBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i14.WalletFormBloc>(
      () => _i14.WalletFormBloc(get<_i11.IWalletRepository>()));
  gh.factory<_i15.AuthBloc>(() => _i15.AuthBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i16.ContactFormBloc>(
      () => _i16.ContactFormBloc(get<_i9.IContactRepository>()));
  gh.factory<_i17.ContactListBloc>(
      () => _i17.ContactListBloc(get<_i9.IContactRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i18.FirebaseInjectableModule {}
