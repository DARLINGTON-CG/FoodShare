// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i9;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i8;
import 'application/posts/post_watcher/post_watcher_bloc.dart' as _i6;
import 'domain/auth/i_auth_facade.dart' as _i4;
import 'domain/posts/i_post_repository.dart' as _i7;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i5;
import 'infrastructure/core/firebase_injectable_module.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.IAuthFacade>(
      () => _i5.FirebaseAuthFacade(get<_i3.FirebaseAuth>()));
  gh.factory<_i6.PostWatcherBloc>(
      () => _i6.PostWatcherBloc(get<_i7.IPostRepository>()));
  gh.factory<_i8.SignInFormBloc>(
      () => _i8.SignInFormBloc(get<_i4.IAuthFacade>()));
  gh.factory<_i9.AuthBloc>(() => _i9.AuthBloc(get<_i4.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i10.FirebaseInjectableModule {}
