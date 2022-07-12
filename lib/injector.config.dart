// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i30;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i26;
import 'application/messaging/create_messages/create_messages_bloc.dart'
    as _i31;
import 'application/messaging/read_messages/read_messages_bloc.dart' as _i25;
import 'application/payments/payment_bloc.dart' as _i20;
import 'application/posts/free_post_watcher/post_free_watcher_bloc.dart'
    as _i23;
import 'application/posts/paid_post_watcher/post_paid_watcher_bloc.dart'
    as _i24;
import 'application/posts/post_actor/post_actor_bloc.dart' as _i21;
import 'application/posts/post_form/post_form_bloc.dart' as _i22;
import 'application/posts/user_post_watcher/user_post_watcher_bloc.dart'
    as _i29;
import 'application/user_data/user_data_cud/user_data_bloc.dart' as _i27;
import 'application/user_data/user_data_read/user_data_read_bloc.dart' as _i28;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/location/location_interface.dart' as _i18;
import 'domain/messaging/i_message_repository.dart' as _i8;
import 'domain/payments/i_payment_repository.dart' as _i10;
import 'domain/posts/i_post_repository.dart' as _i12;
import 'domain/storage/i_storage_repository.dart' as _i14;
import 'domain/user/i_user_repository.dart' as _i16;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'infrastructure/core/firebase_injectable_module.dart' as _i32;
import 'infrastructure/location/location_impl.dart' as _i19;
import 'infrastructure/messaging/message_repository.dart' as _i9;
import 'infrastructure/payments/rapyd_client.dart' as _i11;
import 'infrastructure/posts/post_repository.dart' as _i13;
import 'infrastructure/storage/storage_repository.dart' as _i15;
import 'infrastructure/user/user_data_repository.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i10.IPaymentRepository>(() => _i11.RapydClient());
  gh.lazySingleton<_i12.IPostRepository>(
      () => _i13.PostRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i14.IStorageRepository>(
      () => _i15.StorageRepository(get<_i5.FirebaseStorage>()));
  gh.lazySingleton<_i16.IUserRepository>(
      () => _i17.UserDataRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i18.LocationInterface>(() => _i19.LocationImpl());
  gh.factory<_i20.PaymentBloc>(() => _i20.PaymentBloc(
      get<_i10.IPaymentRepository>(), get<_i8.IMessageRepository>()));
  gh.factory<_i21.PostActorBloc>(
      () => _i21.PostActorBloc(get<_i12.IPostRepository>()));
  gh.factory<_i22.PostFormBloc>(
      () => _i22.PostFormBloc(get<_i12.IPostRepository>()));
  gh.factory<_i23.PostFreeWatcherBloc>(
      () => _i23.PostFreeWatcherBloc(get<_i12.IPostRepository>()));
  gh.factory<_i24.PostPaidWatcherBloc>(
      () => _i24.PostPaidWatcherBloc(get<_i12.IPostRepository>()));
  gh.factory<_i25.ReadMessagesBloc>(
      () => _i25.ReadMessagesBloc(get<_i8.IMessageRepository>()));
  gh.factory<_i26.SignInFormBloc>(
      () => _i26.SignInFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i27.UserDataBloc>(
      () => _i27.UserDataBloc(get<_i16.IUserRepository>()));
  gh.factory<_i28.UserDataReadBloc>(
      () => _i28.UserDataReadBloc(get<_i16.IUserRepository>()));
  gh.factory<_i29.UserPostBloc>(
      () => _i29.UserPostBloc(get<_i12.IPostRepository>()));
  gh.factory<_i30.AuthBloc>(() => _i30.AuthBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i31.CreateMessagesBloc>(
      () => _i31.CreateMessagesBloc(get<_i8.IMessageRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i32.FirebaseInjectableModule {}
