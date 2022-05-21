import 'package:cloud_firestore/cloud_firestore.dart';

extension FirestoreX on FirebaseFirestore {
  // ignore: always_specify_types
  Future<CollectionReference> postDocuments() async {
    return FirebaseFirestore.instance.collection('posts');
  }

  // ignore: always_specify_types
  Future<CollectionReference> userDocuments() async {
    return FirebaseFirestore.instance.collection('users');
  }


  // ignore: always_specify_types
  Future<CollectionReference> chatDocuments() async {
    return FirebaseFirestore.instance.collection('chats');
  }
  // // ignore: always_specify_types
  // Future<CollectionReference> userDocuments() async {
  //   final Option<LocalUser> userOption = getIt<IAuthFacade>().getSignedInUser();
  //   final LocalUser user =
  //       userOption.getOrElse(() => throw NotAuthenticatedError());

  //   return FirebaseFirestore.instance.collection('posts')
  //     ..where('postUserId', isEqualTo: user.id.getOrCrash());
  // }
}

// // ignore: always_specify_types
// extension DocumentReferenceX on DocumentReference {
//   // ignore: always_specify_types
//   CollectionReference get postCollection => collection('posts');
// }
