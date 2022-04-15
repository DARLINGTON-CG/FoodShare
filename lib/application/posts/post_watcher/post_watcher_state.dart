part of 'post_watcher_bloc.dart';

@freezed
class PostWatcherState with _$PostWatcherState {
  const factory PostWatcherState.initial() = _Initial;
  const factory PostWatcherState.loadingProgress() = _LoadingProgress;
  const factory PostWatcherState.loadSuccess(KtList<Post> posts) = _LoadSuccess;
  const factory PostWatcherState.loadFailure(PostFailure postFailure) = _LoadFailure;
}



