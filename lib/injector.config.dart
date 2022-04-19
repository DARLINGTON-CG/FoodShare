// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i16;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i15;
import 'application/posts/post_actor/post_actor_bloc.dart' as _i12;
import 'application/posts/post_form/post_form_bloc.dart' as _i13;
import 'application/posts/post_watcher/post_watcher_bloc.dart' as _i14;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/posts/i_post_repository.dart' as _i8;
import 'domain/storage/i_storage_repository.dart' as _i10;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'infrastructure/core/firebase_injectable_module.dart' as _i17;
import 'infrastructure/posts/post_repository.dart' as _i9;
import 'infrastructure/storage/storage_repository.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i6.IAuthFacade>(
      () => _i7.FirebaseAuthFacade(get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i8.IPostRepository>(
      () => _i9.PostRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i10.IStorageRepository>(
      () => _i11.StorageRepository(get<_i5.FirebaseStorage>()));
  gh.factory<_i12.PostActorBloc>(
      () => _i12.PostActorBloc(get<_i8.IPostRepository>()));
  gh.factory<_i13.PostFormBloc>(
      () => _i13.PostFormBloc(get<_i8.IPostRepository>()));
  gh.factory<_i14.PostWatcherBloc>(
      () => _i14.PostWatcherBloc(get<_i8.IPostRepository>()));
  gh.factory<_i15.SignInFormBloc>(
      () => _i15.SignInFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i16.AuthBloc>(() => _i16.AuthBloc(get<_i6.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i17.FirebaseInjectableModule {}
