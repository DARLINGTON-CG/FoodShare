part of 'user_data_bloc.dart';


@freezed
class UserDataState with _$UserDataState {
  const factory UserDataState(
          {required UserData data,
          required bool showErrorMessages,
          required bool isSaving,
          required bool isEditing,
          required Option<Either<UserDataFailure, Unit>> successOrFailure}) =
      _UserDataState;

  factory UserDataState.initial() => UserDataState(
      data: UserData.empty(),
      showErrorMessages: false,
      isEditing: false,
      isSaving: false,
      successOrFailure: none());
}
