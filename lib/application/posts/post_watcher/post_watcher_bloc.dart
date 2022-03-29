import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodshare/domain/posts/i_post_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/posts/post_failure.dart';

part 'post_watcher_event.dart';
part 'post_watcher_state.dart';

part 'post_watcher_bloc.freezed.dart';

@injectable
class PostWatcherBloc extends Bloc<PostWatcherEvent, PostWatcherState> {
  final IPostRepository _postRepository;
  PostWatcherBloc(this._postRepository) : super(const PostWatcherState.initial()) {
    // on<AuthCheckRequested>(_onAuthCheckStatusRequested);
    // on<SignedOut>(_onSignedOut);
  }

  // void _onAuthCheckStatusRequested(
  //     AuthCheckRequested event, Emitter<AuthState> emit) async {
  //   final Option<LocalUser> userOption = _authFacade.getSignedInUser();
  //   emit(userOption.fold(() => const AuthState.unauthenticated(),
  //       (_) => const AuthState.authenticated()));
  // }

  // void _onSignedOut(SignedOut event, Emitter<AuthState> emit) async {
  //   await _authFacade.signOut();
  //   emit(const AuthState.unauthenticated());
  // }
}
