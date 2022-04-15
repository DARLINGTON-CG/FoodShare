import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/posts/i_post_repository.dart';
import '../../../domain/posts/post_failure.dart';
import '../../../domain/posts/value_objects.dart';

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
      descriptionChanged: (_DescriptionChanged e) {
        emit(state.copyWith(
            post: state.post.copyWith(description: PostDescription(e.description)),
            successOrFailure: none()));
      },
      quantityChanged: (_QuantityChanged e) {
        emit(state.copyWith(
            post: state.post.copyWith(quantity: PostQuantity(e.quantity)),
            successOrFailure: none()));
      },
      titleChanged: (_TitleChanged e) {
        emit(state.copyWith(
            post: state.post.copyWith(title: PostTitle(e.title)),
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
