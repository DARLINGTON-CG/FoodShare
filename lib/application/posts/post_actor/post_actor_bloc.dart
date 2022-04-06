import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/posts/i_post_repository.dart';
import '../../../domain/posts/post.dart';
import '../../../domain/posts/post_failure.dart';

part 'post_actor_bloc.freezed.dart';
part 'post_actor_event.dart';
part 'post_actor_state.dart';

@injectable
class PostActorBloc extends Bloc<PostActorEvent, PostActorState> {
  final IPostRepository _postRepository;
  PostActorBloc(this._postRepository) : super(const PostActorState.initial()) {
    on<PostActorEvent>(
        (PostActorEvent event, Emitter<PostActorState> emit) async {
      emit(const PostActorState.actionProgress());
      final Either<PostFailure, Unit> possibleFailure =
          await _postRepository.delete(event.post);
      emit(possibleFailure.fold((PostFailure f) => PostActorState.actionFailure(f),
          (Unit r) => const PostActorState.actionSuccess()));
    });
  }
}
