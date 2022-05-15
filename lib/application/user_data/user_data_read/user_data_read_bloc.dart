import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/user/i_user_repository.dart';
import '../../../domain/user/user_data.dart';
import '../../../domain/user/user_data_failure.dart';

part 'user_data_read_bloc.freezed.dart';

part 'user_data_read_state.dart';
part 'user_data_read_events.dart';

@injectable
class UserDataReadBloc extends Bloc<UserDataReadEvents, UserDataReadState> {
  final IUserRepository _userRepository;
  UserDataReadBloc(this._userRepository)
      : super(const UserDataReadState.initial()) {
    on<ReadUserData>(_onReadUserData);
  }

  void _onReadUserData(
      ReadUserData event, Emitter<UserDataReadState> emit) async {
    emit(const UserDataReadState.loadingProgress());
    final Either<UserDataFailure, UserData> failureOrSuccess =
        await _userRepository.getUserData();
    emit(failureOrSuccess.fold(
        (UserDataFailure failure) => UserDataReadState.loadFailure(failure),
        (UserData userData) => UserDataReadState.loadSuccess(userData)));
  }
}
