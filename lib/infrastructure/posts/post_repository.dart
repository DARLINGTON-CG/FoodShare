import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:foodshare/infrastructure/posts/post_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '/domain/posts/i_post_repository.dart';
import '/domain/posts/post.dart';
import '/domain/posts/post_failure.dart';
import '../core/firebase_helpers.dart';

@LazySingleton(as: IPostRepository)
class PostRepository implements IPostRepository {
  final FirebaseFirestore _firebaseFirestore;

  PostRepository(this._firebaseFirestore);

  @override
  Future<Either<PostFailure, Unit>> create(Post post) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<PostFailure, Unit>> delete(Post post) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<PostFailure, Unit>> update(Post post) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Stream<Either<PostFailure, KtList<Post>>> watchAll() async* {
    final DocumentReference<Object?> userDoc =
        await _firebaseFirestore.userDocument();
    yield* userDoc.postCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map((QuerySnapshot<Object?> snapshots) => right(snapshots.docs.map((QueryDocumentSnapshot<Object?> doc) => PostDto.fromFirestore(doc).toDomain()).toImmutableList()));
  }

  @override
  Stream<Either<PostFailure, KtList<Post>>> watchAllUncompleted() {
    // TODO: implement watchAllUncompleted
    throw UnimplementedError();
  }
}
