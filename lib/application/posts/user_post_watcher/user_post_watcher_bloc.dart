
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/posts/i_post_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/posts/post.dart';
import '../../../domain/posts/post_failure.dart';

part 'user_post_watcher_event.dart';
part 'user_post_watcher_state.dart';

part 'user_post_watcher_bloc.freezed.dart';

@injectable
class UserPostBloc extends Bloc<UserPostEvent, UserPostState> {
  final IPostRepository _postRepository;
  UserPostBloc(this._postRepository)
      : super(const UserPostState.initial()) {
    on<WatchAllStarted>(_onWatchAllPaidStarted);
    }

  void _onWatchAllPaidStarted(
      WatchAllStarted event, Emitter<UserPostState> emit) async {
    emit(const UserPostState.loadingProgress());
    await emit.onEach<UserPostState>(
      _postRepository.watchAll().map(
          (Either<PostFailure, KtList<Post>> failureOrPost) =>
              failureOrPost.fold(
                  (PostFailure failure) =>
                      UserPostState.loadFailure(failure),
                  (KtList<Post> posts) => UserPostState.loadSuccess(posts))),
      onData: (UserPostState post) => emit(post),
    );
   }

}
