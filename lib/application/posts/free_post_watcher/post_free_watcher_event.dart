part of 'post_free_watcher_bloc.dart';

@freezed
class PostFreeWatcherEvent with _$PostFreeWatcherEvent{
  const factory PostFreeWatcherEvent.watchAllFreeStarted() = WatchAllFreeStarted;
}
