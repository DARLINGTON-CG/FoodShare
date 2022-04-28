import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import 'post.dart';
import 'post_failure.dart';

abstract class IPostRepository {
  Stream<Either<PostFailure, KtList<Post>>> watchAll();
  Stream<Either<PostFailure, KtList<Post>>> watchAllFree();
  Stream<Either<PostFailure, KtList<Post>>> watchAllPaid();
  Future<Either<PostFailure, Unit>> create(Post post,File file);
  Future<Either<PostFailure, Unit>> update(Post post);
  Future<Either<PostFailure, Unit>> delete(Post post);
}
