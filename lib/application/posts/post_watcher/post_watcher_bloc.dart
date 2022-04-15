import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/posts/i_post_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/posts/post.dart';
import '../../../domain/posts/post_failure.dart';

part 'post_watcher_event.dart';
part 'post_watcher_state.dart';

part 'post_watcher_bloc.freezed.dart';

@injectable
class PostWatcherBloc extends Bloc<PostWatcherEvent, PostWatcherState> {
  final IPostRepository _postRepository;
  PostWatcherBloc(this._postRepository)
      : super(const PostWatcherState.initial()) {
    on<PostWatcherEvent>(
        (PostWatcherEvent event, Emitter<PostWatcherState> emit) {
      event.map(watchAllStarted: (_WatchAllStarted e) async {
        emit(const PostWatcherState.loadingProgress());
        await _postStreamSubscription?.cancel();
        _postStreamSubscription = _postRepository.watchAll().listen(
            (Either<PostFailure, KtList<Post>> failureOrPost) =>
                add(PostWatcherEvent.postReceived(failureOrPost)));
      }, watchUncompletedStarted: (_WatchUncompletedStarted e) async {
        emit(const PostWatcherState.loadingProgress());
        await _postStreamSubscription?.cancel();
        _postStreamSubscription = _postRepository.watchAllUncompleted().listen(
            (Either<PostFailure, KtList<Post>> failureOrPost) =>
                add(PostWatcherEvent.postReceived(failureOrPost)));
      }, postReceived: ( _PostReceived e) {
        emit(e.failureOrPost.fold(
            (PostFailure failure) => PostWatcherState.loadFailure(failure),
            (KtList<Post> posts) => PostWatcherState.loadSuccess(posts)));
      });
    });
    // on<WatchAllStarted>(_onWatchAllStarted);
    // on<WatchUncompletedStarted>(_onWatchAllUncompletedStarted);
    // on<PostReceived>(_postReceived);
  }

  StreamSubscription<Either<PostFailure, KtList<Post>>>?
      _postStreamSubscription;

  @override
  Future<void> close()async {
    await  _postStreamSubscription?.cancel();
    return super.close();
  }
  // void _onWatchAllStarted(
  //     PostWatcherEvent event, Emitter<PostWatcherState> emit) {
  //   emit(const PostWatcherState.loadingProgress());
  //   _postStreamSubscription = _postRepository.watchAll().listen(
  //       (Either<PostFailure, KtList<Post>> failureOrPost) =>
  //           add(PostWatcherEvent.postReceived(failureOrPost)));
  // }

  // void _onWatchAllUncompletedStarted(
  //     PostWatcherEvent event, Emitter<PostWatcherState> emit) {}
  // void _postReceived(PostWatcherEvent event, Emitter<PostWatcherState> emit) {
  //   event.map(watchAllStarted: (WatchAllStarted e) async {
  //     emit(const PostWatcherState.loadingProgress());
  //     await _postStreamSubscription?.cancel();
  //     _postStreamSubscription = _postRepository.watchAll().listen(
  //         (Either<PostFailure, KtList<Post>> failureOrPost) =>
  //             add(PostWatcherEvent.postReceived(failureOrPost)));
  //   }, watchUncompletedStarted: (WatchUncompletedStarted e) async {
  //     emit(const PostWatcherState.loadingProgress());
  //     await _postStreamSubscription?.cancel();
  //     _postStreamSubscription = _postRepository.watchAllUncompleted().listen(
  //         (Either<PostFailure, KtList<Post>> failureOrPost) =>
  //             add(PostWatcherEvent.postReceived(failureOrPost)));
  //   }, postReceived: (PostReceived e) {
  //     emit(e.failureOrPost.fold(
  //         (PostFailure f) => PostWatcherState.loadFailure(f),
  //         (KtList<Post> r) => const PostWatcherState.loadSuccess()));
  //   });
  // }

}
