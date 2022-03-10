import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:foodshare/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/i_auth_facade.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;
  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<SignInFormEvent>((SignInFormEvent event, Emitter<SignInFormState> emit) {
      event.map(emailChanged: (EmailChanged e) async* {
        yield state.copyWith(
            emailAddress: EmailAddress(e.emailString),
            authFailureOrSuccessOption: none());
      }, passwordChanged: (PasswordChanged e) async* {
        yield state.copyWith(
            password: Password(e.passwordString),
            authFailureOrSuccessOption: none());
      }, registerWithEmailAndPasswordPressed:
          (RegisterWithEmailAndPasswordPressed e) async* {
        yield _performActionOnAuthFacadeWithEmailAndPassword(
            _authFacade.registerWithEmailAndPassword);
      }, signInWithEmailAndPasswordPressed:
          (SignInWithEmailAndPasswordPressed e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
            _authFacade.signInWithEmailAndPassword);
      });
    });
  }

  Stream<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
      Future<Either<AuthFailure, Unit>> Function(
              {required EmailAddress emailAddress, required Password password})
          forwardedCall) async* {
    final bool isEmailValid = state.emailAddress.isValid();
    final bool isPasswordValid = state.password.isValid();
    Either<AuthFailure, Unit>? failureOrSuccess;
    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
          isSubmitting: true, authFailureOrSuccessOption: none());
      failureOrSuccess = await forwardedCall(
          emailAddress: state.emailAddress, password: state.password);
    }
    yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess));
  }
}
