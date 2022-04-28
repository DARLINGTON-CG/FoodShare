part of 'post_paid_watcher_bloc.dart';

@freezed
class PostWatcherPaidEvent with _$PostWatcherPaidEvent {
  const factory PostWatcherPaidEvent.watchAllPaidStarted() = WatchAllPaidStarted;
}
