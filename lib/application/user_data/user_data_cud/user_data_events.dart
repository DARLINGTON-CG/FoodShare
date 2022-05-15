part of 'user_data_bloc.dart';

@freezed
class UserDataEvents with _$UserDataEvents {
  const factory UserDataEvents.initialized(Option<UserData> initialUserData) = Initialized;
  const factory UserDataEvents.usernameChanged(String username) = UsernameChanged;
  const factory UserDataEvents.saved(File? image) = Saved;

}
