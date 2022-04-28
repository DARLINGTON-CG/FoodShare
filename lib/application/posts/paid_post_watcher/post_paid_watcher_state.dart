part of 'post_paid_watcher_bloc.dart';

@freezed
class PostPaidWatcherState with _$PostPaidWatcherState {
  const factory PostPaidWatcherState.initial() = _Initial;
  const factory PostPaidWatcherState.loadingProgress() = _LoadingProgress;
  const factory PostPaidWatcherState.loadSuccess(KtList<Post> posts) = _LoadSuccess;
  const factory PostPaidWatcherState.loadFailure(PostFailure postFailure) = _LoadFailure;
}



