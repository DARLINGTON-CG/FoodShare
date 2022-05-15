part of 'user_data_read_bloc.dart';

@freezed
class UserDataReadState with _$UserDataReadState {
  const factory UserDataReadState.initial() = _Initial;
  const factory UserDataReadState.loadingProgress() = _LoadingProgress;
  const factory UserDataReadState.loadSuccess(UserData userData) = _LoadSuccess;
  const factory UserDataReadState.loadFailure(UserDataFailure postFailure) = _LoadFailure;
}



