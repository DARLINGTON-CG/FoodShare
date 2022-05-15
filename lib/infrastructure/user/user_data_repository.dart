import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'dart:io';

import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/user.dart';
import '../../domain/core/errors.dart';
import '../../domain/core/value_objects.dart';
import '../../domain/storage/i_storage_repository.dart';
import '../../domain/storage/storage_failure.dart';
import '../../domain/user/i_user_repository.dart';
import '../../domain/user/user_data_failure.dart';
import '../../domain/user/user_data.dart';
import '../../injector.dart';
import '../core/firebase_helpers.dart';
import 'user_data_dto.dart';

@LazySingleton(as: IUserRepository)
class UserDataRepository extends IUserRepository {
  final FirebaseFirestore _firebaseFirestore;

  UserDataRepository(this._firebaseFirestore);

  @override
  Future<Either<UserDataFailure, Unit>> create(UserData data, File file) async {
    try {
      final Option<LocalUser> userOption =
          getIt<IAuthFacade>().getSignedInUser();
      final LocalUser user =
          userOption.getOrElse(() => throw NotAuthenticatedError());

      final UserData dataForUpload = await getIt<IStorageRepository>()
          .upload(file, user.id.getOrCrash())
          .then((Either<StorageFailure, String> imageUrl) => data.copyWith(
              imageUrl: ImageUrl(imageUrl.getOrElse(() => throw Exception()))));

      final CollectionReference<Object?> userDoc =
          await _firebaseFirestore.userDocuments();

      final UserDataDto userDto = UserDataDto.fromDomain(dataForUpload);
      await userDoc.doc(user.id.getOrCrash()).set(userDto.toJson());
      return right(unit);
    } catch (e) {
      if (e.toString().toLowerCase().contains("permission-denied")) {
        return left(const UserDataFailure.insufficientPermissions());
      } else {
        return left(const UserDataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<UserDataFailure, Unit>> delete(UserData data) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Stream<Either<UserDataFailure, Unit>> observeAllUsernames() {
    // TODO: implement observeAllUsernames
    throw UnimplementedError();
  }

  @override
  Future<Either<UserDataFailure, Unit>> update(UserData data, File? file) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<Either<UserDataFailure, UserData>> getUserData() async {
    try {
      final Option<LocalUser> userOption =
          getIt<IAuthFacade>().getSignedInUser();
      final LocalUser user =
          userOption.getOrElse(() => throw NotAuthenticatedError());

      final CollectionReference<Object?> userDoc =
          await _firebaseFirestore.userDocuments();

      final DocumentSnapshot<Object?> doc =
          await userDoc.doc(user.id.getOrCrash()).get();
      final UserData userData = UserDataDto.fromFirestore(doc).toDomain();
      return right(userData);
    } catch (e) {
      if (e.toString().toLowerCase().contains("permission-denied")) {
        return left(const UserDataFailure.insufficientPermissions());
      } else {
        return left(const UserDataFailure.unexpected());
      }
    }
  }
}
