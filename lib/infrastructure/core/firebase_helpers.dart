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
 
}
