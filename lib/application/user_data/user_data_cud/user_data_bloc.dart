import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/user/i_user_repository.dart';
import '../../../domain/user/user_data.dart';
import '../../../domain/user/user_data_failure.dart';
import '../../../domain/user/value_objects.dart';

part 'user_data_bloc.freezed.dart';
part 'user_data_events.dart';
part 'user_data_state.dart';

@injectable
class UserDataBloc extends Bloc<UserDataEvents, UserDataState> {
  final IUserRepository _userRepository;

  UserDataBloc(this._userRepository) : super(UserDataState.initial()) {
    on<Initialized>(_onInitialized);
    on<UsernameChanged>(_onUsernameChanged);
    //on<UserDeleted>(_onDeleted);
    on<Saved>(_onSaved);
  }

  void _onInitialized(Initialized event, Emitter<UserDataState> emit) {
    emit(event.initialUserData.fold(
        () => state,
        (UserData initialUserData) =>
            state.copyWith(data: initialUserData, isEditing: true)));
  }

  void _onUsernameChanged(UsernameChanged event, Emitter<UserDataState> emit) {
    emit(state.copyWith(
        data: state.data.copyWith(username: Username(event.username)),
        successOrFailure: none()));
  }

  void _onSaved(Saved event, Emitter<UserDataState> emit) async {
    emit(state.copyWith(isSaving: true, successOrFailure: none()));

    if (state.data.failureOption.isNone() &&
        (event.image != null || state.data.imageUrl.isValid())) {
      final Either<UserDataFailure, Unit> failureOrSuccess = state.isEditing
          ? await _userRepository.update(state.data, event.image)
          : await _userRepository.create(state.data, event.image!);
      emit(state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          successOrFailure: optionOf(failureOrSuccess)));
    }
    emit(state.copyWith(
        isSaving: false, showErrorMessages: true, successOrFailure: none()));
  }

  // void _onDeleted(UserDeleted event, Emitter<UserDataState> emit) async {
  //   emit(state.copyWith(isSaving: true, successOrFailure: none()));
      
  //   final Either<UserDataFailure, Unit> failureOrSuccess =
  //       await _userRepository.delete(event.userData);

  //   emit(state.copyWith(
  //       isSaving: false,
  //       showErrorMessages: true,
  //       successOrFailure: optionOf(failureOrSuccess)));
  //   // Might be removed later
  //   emit(state.copyWith(
  //       isSaving: false, showErrorMessages: true, successOrFailure: none()));
  // }
}
