
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
    on<WatchAllPaidStarted>(_onWatchAllPaidStarted);
    }

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
   }

}
