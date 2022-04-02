part of 'post_actor_bloc.dart';

@freezed
class PostActorEvent with _$PostActorEvent {
  const factory PostActorEvent.actionPerformed(Post post) = _ActionPerformed;
}
