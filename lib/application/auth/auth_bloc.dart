import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodshare/domain/auth/i_auth_facade.dart';
import 'package:foodshare/domain/auth/user.dart';
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
  }

  void _onAuthCheckStatusRequested(
      AuthCheckRequested event, Emitter<AuthState> emit) async {
    final Option<LocalUser> userOption = _authFacade.getSignedInUser();
    emit(userOption.fold(() => const AuthState.unauthenticated(),
        (_) => const AuthState.authenticated()));
  }

  void _onSignedOut(SignedOut event, Emitter<AuthState> emit) async {
    await _authFacade.signOut();
    emit(const AuthState.unauthenticated());
  }
}
