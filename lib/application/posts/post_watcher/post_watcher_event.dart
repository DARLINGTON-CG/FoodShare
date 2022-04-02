part of 'post_watcher_bloc.dart';

@freezed
class PostWatcherEvent with _$PostWatcherEvent {
  const factory PostWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory PostWatcherEvent.watchUncompletedStarted() = _WatchUncompletedStarted;
  const factory PostWatcherEvent.postReceived(Either<PostFailure,KtList<Post>> failureOrPost) = _PostReceived;
}
