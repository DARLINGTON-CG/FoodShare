import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/i_auth_facade.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;
  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<RegisterWithEmailAndPasswordPressed>(
        _onRegisterWithEmailAndPasswordPressed);
    on<SignInWithEmailAndPasswordPressed>(_onSignInWithEmailAndPasswordPressed);
    on<OnResetPasswordPressed>(_onResetPasswordPressed);
    on<ResetEmailChanged>(_onResetEmailChanged);
  }

  void _onResetPasswordPressed(
      OnResetPasswordPressed event, Emitter<SignInFormState> emit) async{
    final bool isEmailValid = state.resetEmailAddress.isValid();
   
    if (isEmailValid) {
      emit(state.copyWith(
          isSubmitting: true, authFailureOrSuccessOption: none()));
          
      final Either<AuthFailure, Unit> failureOrSuccess =
          await _authFacade.sendResetEmail(emailAddress: state.resetEmailAddress);
      emit(state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(failureOrSuccess)));
    }
    emit(state.copyWith(
        showErrorMessages: true, authFailureOrSuccessOption: none()));
  }

  void _onEmailChanged(EmailChanged event, Emitter<SignInFormState> emit) {
    final SignInFormState state = this.state;
    emit(state.copyWith(
        emailAddress: EmailAddress(event.emailString),
        authFailureOrSuccessOption: none()));
  }
  void _onResetEmailChanged(ResetEmailChanged event, Emitter<SignInFormState> emit) {
    final SignInFormState state = this.state;
    emit(state.copyWith(
        resetEmailAddress: EmailAddress(event.resetEmailString),
        authFailureOrSuccessOption: none()));
  }


  void _onPasswordChanged(
      PasswordChanged event, Emitter<SignInFormState> emit) {
    final SignInFormState state = this.state;
    emit(state.copyWith(
        password: Password(event.passwordString),
        authFailureOrSuccessOption: none()));
  }

  void _onRegisterWithEmailAndPasswordPressed(
      RegisterWithEmailAndPasswordPressed event,
      Emitter<SignInFormState> emit) async {
    final bool isEmailValid = state.emailAddress.isValid();
    final bool isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(
          isSubmitting: true, authFailureOrSuccessOption: none()));
      final Either<AuthFailure, Unit> failureOrSuccess =
          await _authFacade.registerWithEmailAndPassword(
              emailAddress: state.emailAddress, password: state.password);
      emit(state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(failureOrSuccess)));
    }
    emit(state.copyWith(
        showErrorMessages: true, authFailureOrSuccessOption: none()));
  }

  void _onSignInWithEmailAndPasswordPressed(
      SignInWithEmailAndPasswordPressed event,
      Emitter<SignInFormState> emit) async {
    final bool isEmailValid = state.emailAddress.isValid();
    final bool isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(
          isSubmitting: true, authFailureOrSuccessOption: none()));
      final Either<AuthFailure, Unit> failureOrSuccess =
          await _authFacade.signInWithEmailAndPassword(
              emailAddress: state.emailAddress, password: state.password);
      emit(state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(failureOrSuccess)));
    }
    emit(state.copyWith(
        showErrorMessages: true, authFailureOrSuccessOption: none()));
  }
}
