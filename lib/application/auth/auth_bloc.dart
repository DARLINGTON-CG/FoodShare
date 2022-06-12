import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(const AuthState.initial()) {
    on<AuthCheckRequested>(_onAuthCheckStatusRequested);
    on<SignedOut>(_onSignedOut);
    on<DeleteUser>(_onDeleteUser);
  }

  void _onAuthCheckStatusRequested(
      AuthCheckRequested event, Emitter<AuthState> emit) async {
    final Option<LocalUser> userOption = _authFacade.getSignedInUser();
    emit(userOption.fold(() => const AuthState.unauthenticated(),
        (_) => const AuthState.authenticated()));
  }

  void _onSignedOut(SignedOut event, Emitter<AuthState> emit) async {
   final Either<AuthFailure, Unit> failureOrSuccess =
        await _authFacade.signOut();
    emit(failureOrSuccess.fold((AuthFailure l) => AuthState.serverError(),
        (Unit r) => const AuthState.unauthenticated()));
  }

  //Delete a user record and have firebase delete all user's documents
  void _onDeleteUser(DeleteUser event, Emitter<AuthState> emit) async {
    final Either<AuthFailure, Unit> failureOrSuccess = await _authFacade.deleteUser();
    emit(failureOrSuccess.fold((AuthFailure l) => AuthState.serverError(),
        (Unit r) => const AuthState.unauthenticated()));
  }
}
