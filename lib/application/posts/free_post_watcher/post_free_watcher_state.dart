part of 'post_free_watcher_bloc.dart';

@freezed
class PostFreeWatcherState with _$PostFreeWatcherState {
  const factory PostFreeWatcherState.initial() = _Initial;
  const factory PostFreeWatcherState.loadingProgress() = _LoadingProgress;
  const factory PostFreeWatcherState.loadSuccess(KtList<Post> posts) = _LoadSuccess;
  const factory PostFreeWatcherState.loadFailure(PostFailure postFailure) = _LoadFailure;
}



