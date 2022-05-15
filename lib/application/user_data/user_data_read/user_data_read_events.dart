part of 'user_data_read_bloc.dart';


@freezed
class UserDataReadEvents with _$UserDataReadEvents{
  const factory UserDataReadEvents.readUserData() = ReadUserData;
}
