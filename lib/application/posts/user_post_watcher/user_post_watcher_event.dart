part of 'user_post_watcher_bloc.dart';

@freezed
class UserPostEvent with _$UserPostEvent {
  const factory UserPostEvent.watchAllStarted() = WatchAllStarted;
}
