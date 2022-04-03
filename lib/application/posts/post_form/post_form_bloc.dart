import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:foodshare/domain/posts/i_post_repository.dart';
import 'package:foodshare/domain/posts/post_failure.dart';
import 'package:foodshare/domain/posts/value_objects.dart';

import '../../../domain/posts/post.dart';

part 'post_form_bloc.freezed.dart';
part 'post_form_event.dart';
part 'post_form_state.dart';

@injectable
class PostFormBloc extends Bloc<PostFormEvent, PostFormState> {
  final IPostRepository _postRepository;

  PostFormBloc(
    this._postRepository,
  ) : super(PostFormState.initial()) {
    on<PostFormEvent>(_onPostFormEvent);
  }

  void _onPostFormEvent(PostFormEvent event, Emitter<PostFormState> emit) {
    event.map(
      initialized: (_Initialized e) {
        emit(e.intialPostOption.fold(
            () => state,
            (Post initialPost) =>
                state.copyWith(post: initialPost, isEditing: true)));
      },
      bodyChanged: (_BodyChanged e) {
        emit(state.copyWith(
            post: state.post.copyWith(body: PostBody(e.bodyStr)),
            successOrFailure: none()));
      },
      optionChanged: (_OptionChanged e) {
        emit(state.copyWith(
            post: state.post.copyWith(option: PostOption(e.optionStr)),
            successOrFailure: none()));
      },
      nameChanged: (_NameChanged e) {
        emit(state.copyWith(
            post: state.post.copyWith(name: PostName(e.name)),
            successOrFailure: none()));
      },
      saved: (_Saved e) async {
        Either<PostFailure, Unit>? failureOrSuccess;

        emit(state.copyWith(isSaving: true, successOrFailure: none()));

        if (state.post.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _postRepository.update(state.post)
              : await _postRepository.create(state.post);
        }
        emit(state.copyWith(
            isSaving: false,
            showErrorMessages: true,
            successOrFailure: optionOf(failureOrSuccess)));
      },
    );
  }
}
