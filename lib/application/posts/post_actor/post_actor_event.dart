part of 'post_actor_bloc.dart';

@freezed
class PostActorEvent with _$PostActorEvent {
  const factory PostActorEvent.deleteActionPerformed(Post post) = DeleteActionPerformed;
}
