import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import '../../domain/auth/user.dart';
import '../../domain/core/errors.dart';
import '../../injector.dart';
import '../../domain/auth/i_auth_facade.dart';

extension FirestoreX on FirebaseFirestore {
  // ignore: always_specify_types
  Future<DocumentReference> userDocument() async {
    final Option<LocalUser> userOption = getIt<IAuthFacade>().getSignedInUser();
    final LocalUser user =
        userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }
}

// ignore: always_specify_types
extension DocumentReferenceX on DocumentReference {
  CollectionReference get postCollection => collection('posts');
}
