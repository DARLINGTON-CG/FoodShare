// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes, always_specify_types

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i25;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i21;
import 'application/messaging/create_messages/create_messages_bloc.dart'
    as _i26;
import 'application/messaging/read_messages/read_messages_bloc.dart' as _i20;
import 'application/posts/free_post_watcher/post_free_watcher_bloc.dart'
    as _i18;
import 'application/posts/paid_post_watcher/post_paid_watcher_bloc.dart'
    as _i19;
import 'application/posts/post_actor/post_actor_bloc.dart' as _i16;
import 'application/posts/post_form/post_form_bloc.dart' as _i17;
import 'application/posts/user_post_watcher/user_post_watcher_bloc.dart'
    as _i24;
import 'application/user_data/user_data_cud/user_data_bloc.dart' as _i22;
import 'application/user_data/user_data_read/user_data_read_bloc.dart' as _i23;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/messaging/i_message_repository.dart' as _i8;
import 'domain/posts/i_post_repository.dart' as _i10;
import 'domain/storage/i_storage_repository.dart' as _i12;
import 'domain/user/i_user_repository.dart' as _i14;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'infrastructure/core/firebase_injectable_module.dart' as _i27;
import 'infrastructure/messaging/message_repository.dart' as _i9;
import 'infrastructure/posts/post_repository.dart' as _i11;
import 'infrastructure/storage/storage_repository.dart' as _i13;
import 'infrastructure/user/user_data_repository.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i8.IMessageRepository>(
      () => _i9.MessageRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i10.IPostRepository>(
      () => _i11.PostRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i12.IStorageRepository>(
      () => _i13.StorageRepository(get<_i5.FirebaseStorage>()));
  gh.lazySingleton<_i14.IUserRepository>(
      () => _i15.UserDataRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i16.PostActorBloc>(
      () => _i16.PostActorBloc(get<_i10.IPostRepository>()));
  gh.factory<_i17.PostFormBloc>(
      () => _i17.PostFormBloc(get<_i10.IPostRepository>()));
  gh.factory<_i18.PostFreeWatcherBloc>(
      () => _i18.PostFreeWatcherBloc(get<_i10.IPostRepository>()));
  gh.factory<_i19.PostPaidWatcherBloc>(
      () => _i19.PostPaidWatcherBloc(get<_i10.IPostRepository>()));
  gh.factory<_i20.ReadMessagesBloc>(
      () => _i20.ReadMessagesBloc(get<_i8.IMessageRepository>()));
  gh.factory<_i21.SignInFormBloc>(
      () => _i21.SignInFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i22.UserDataBloc>(
      () => _i22.UserDataBloc(get<_i14.IUserRepository>()));
  gh.factory<_i23.UserDataReadBloc>(
      () => _i23.UserDataReadBloc(get<_i14.IUserRepository>()));
  gh.factory<_i24.UserPostBloc>(
      () => _i24.UserPostBloc(get<_i10.IPostRepository>()));
  gh.factory<_i25.AuthBloc>(() => _i25.AuthBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i26.CreateMessagesBloc>(
      () => _i26.CreateMessagesBloc(get<_i8.IMessageRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i27.FirebaseInjectableModule {}
