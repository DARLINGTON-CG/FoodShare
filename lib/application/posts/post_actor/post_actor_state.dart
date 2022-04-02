part of 'post_actor_bloc.dart';

@freezed
class PostActorState with _$PostActorState {
  const factory PostActorState.initial() = _Initial;
  const factory PostActorState.actionProgress() = _ActionProgress;
  const factory PostActorState.actionFailure(PostFailure postFailure) = _ActionFailure;
  const factory PostActorState.actionSuccess() = _ActionSuccess;
}
