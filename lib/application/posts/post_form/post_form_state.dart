part of 'post_form_bloc.dart';

@freezed
class PostFormState with _$PostFormState {
  const factory PostFormState(
          {required Post post,
          required bool showErrorMessages,
          required bool isSaving,
          required bool isEditing,
          required Option<Either<PostFailure, Unit>> successOrFailure}) =
      _PostFormState;

  factory PostFormState.initial() => PostFormState(
      post: Post.empty(),
      showErrorMessages: false,
      isEditing: false,
      isSaving: false,
      successOrFailure: none());
}
