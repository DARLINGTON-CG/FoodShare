
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/posts/i_post_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/posts/post.dart';
import '../../../domain/posts/post_failure.dart';

part 'post_paid_watcher_event.dart';
part 'post_paid_watcher_state.dart';

part 'post_paid_watcher_bloc.freezed.dart';

@injectable
class PostPaidWatcherBloc extends Bloc<PostWatcherPaidEvent, PostPaidWatcherState> {
  final IPostRepository _postRepository;
  PostPaidWatcherBloc(this._postRepository)
      : super(const PostPaidWatcherState.initial()) {
    // on<PostWatcherEvent>(
    //     (PostWatcherEvent event, Emitter<PostWatcherState> emit) {
    //   event.map(watchAllStarted: (_WatchAllStarted e) async {
    //     emit(const PostWatcherState.loadingProgress());
    //     await _postStreamSubscription?.cancel();
    //     _postStreamSubscription = _postRepository.watchAllFree().listen(
    //         (Either<PostFailure, KtList<Post>> failureOrPost) =>
    //             add(PostWatcherEvent.postReceived(failureOrPost)));
    //   }, watchUncompletedStarted: (_WatchUncompletedStarted e) async {
    //     emit(const PostWatcherState.loadingProgress());
    //     await _postStreamSubscription?.cancel();
    //     _postStreamSubscription = _postRepository.watchAllPaid().listen(
    //         (Either<PostFailure, KtList<Post>> failureOrPost) =>
    //             add(PostWatcherEvent.postReceived(failureOrPost)));
    //   }, postReceived: (_PostReceived e) {
    //     emit(e.failureOrPost.fold(
    //         (PostFailure failure) => PostWatcherState.loadFailure(failure),
    //         (KtList<Post> posts) => PostWatcherState.loadSuccess(posts)));
    //   });
    // });
    on<WatchAllPaidStarted>(_onWatchAllPaidStarted);
    // on<PostReceived>(_postReceived);
  }

  // StreamSubscription<Either<PostFailure, KtList<Post>>>?
  //     _postStreamSubscription;

  // @override
  // Future<void> close()async {
  //   await  _postStreamSubscription?.cancel();
  //   return super.close();
  // }

 

  void _onWatchAllPaidStarted(
      WatchAllPaidStarted event, Emitter<PostPaidWatcherState> emit) async {
    emit(const PostPaidWatcherState.loadingProgress());
    await emit.onEach<PostPaidWatcherState>(
      _postRepository.watchAllPaid().map(
          (Either<PostFailure, KtList<Post>> failureOrPost) =>
              failureOrPost.fold(
                  (PostFailure failure) =>
                      PostPaidWatcherState.loadFailure(failure),
                  (KtList<Post> posts) => PostPaidWatcherState.loadSuccess(posts))),
      onData: (PostPaidWatcherState post) => emit(post),
    );
    //  emit(event.failureOrPost.fold(
    //         (PostFailure failure) => PostWatcherState.loadFailure(failure),
    //         (KtList<Post> posts) => PostWatcherState.loadSuccess(posts)));
    // _postStreamSubscription = _postRepository.watchAll().listen(
    //     (Either<PostFailure, KtList<Post>> failureOrPost) =>
    //         add(PostWatcherEvent.postReceived(failureOrPost)));
  }

  // void _onWatchAllPaidStarted(
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
