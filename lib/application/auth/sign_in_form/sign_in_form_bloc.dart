import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:foodshare/domain/auth/value_objects.dart';
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

    // ((EmailChanged event, Emitter<SignInFormState> emit) {

    //   event.map(emailChanged: (EmailChanged e) async* {
    // yield state.copyWith(
    //     emailAddress: EmailAddress(e.emailString),
    //     authFailureOrSuccessOption: none());
    //   }, passwordChanged: (PasswordChanged e) async* {
    //     yield state.copyWith(
    //         password: Password(e.passwordString),
    //         authFailureOrSuccessOption: none());
    //   }, registerWithEmailAndPasswordPressed:
    //       (RegisterWithEmailAndPasswordPressed e) async* {
    //     yield _performActionOnAuthFacadeWithEmailAndPassword(
    //         _authFacade.registerWithEmailAndPassword);
    //   }, signInWithEmailAndPasswordPressed:
    //       (SignInWithEmailAndPasswordPressed e) async* {
    //     yield* _performActionOnAuthFacadeWithEmailAndPassword(
    //         _authFacade.signInWithEmailAndPassword);
    //   });
    // },

    // )  on<PasswordChanged>((PasswordChaged event,Emitter<SignInFormState> emit)){});
  }

  void _onEmailChanged(EmailChanged event, Emitter<SignInFormState> emit) {
    final SignInFormState state = this.state;
    emit(state.copyWith(
        emailAddress: EmailAddress(event.emailString),
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
