part of 'post_actor_bloc.dart';

@freezed
class PostActorState with _$PostActorState {
  const factory PostActorState.initial() = Initial;
  const factory PostActorState.deletionProgress() = DeletionProgress;
  const factory PostActorState.deletionFailure(PostFailure postFailure) = DeletionFailure;
  const factory PostActorState.deletionSuccess() = DeletionSuccess;
}
