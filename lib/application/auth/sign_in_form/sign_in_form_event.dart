part of 'sign_in_form_bloc.dart';


@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged(String emailString) = EmailChanged;
  const factory SignInFormEvent.passwordChanged(String emailString) = PasswordChanged;
  const factory SignInFormEvent.registerWithEmailAndPasswordPressed(String emailString) = RegisterWithEmailAndPasswordPressed;
  const factory SignInFormEvent.signInWithEmailAndPasswordPressed(String emailString) = SignInWithEmailAndPasswordPressed;
}
