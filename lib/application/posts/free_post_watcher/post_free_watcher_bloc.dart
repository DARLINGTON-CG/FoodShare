
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/posts/i_post_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/posts/post.dart';
import '../../../domain/posts/post_failure.dart';

part 'post_free_watcher_event.dart';
part 'post_free_watcher_state.dart';

part 'post_free_watcher_bloc.freezed.dart';

@injectable
class PostFreeWatcherBloc extends Bloc<PostFreeWatcherEvent, PostFreeWatcherState> {
  final IPostRepository _postRepository;
  PostFreeWatcherBloc(this._postRepository)
      : super(const PostFreeWatcherState.initial()) {
    on<WatchAllFreeStarted>(_onWatchAllFreeStarted);
    
  }

  

  void _onWatchAllFreeStarted(
      WatchAllFreeStarted event, Emitter<PostFreeWatcherState> emit) async {
    emit(const PostFreeWatcherState.loadingProgress());

    await emit.onEach<PostFreeWatcherState>(
      _postRepository.watchAllFree().map(
          (Either<PostFailure, KtList<Post>> failureOrPost) =>
              failureOrPost.fold(
                  (PostFailure failure) =>
                      PostFreeWatcherState.loadFailure(failure),
                  (KtList<Post> posts) => PostFreeWatcherState.loadSuccess(posts))),
      onData: (PostFreeWatcherState post) => emit(post),
    );
  }

  }

