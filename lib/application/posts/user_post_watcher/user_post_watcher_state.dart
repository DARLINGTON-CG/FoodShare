part of 'user_post_watcher_bloc.dart';

@freezed
class UserPostState with _$UserPostState {
  const factory UserPostState.initial() = _Initial;
  const factory UserPostState.loadingProgress() = _LoadingProgress;
  const factory UserPostState.loadSuccess(KtList<Post> posts) = _LoadSuccess;
  const factory UserPostState.loadFailure(PostFailure postFailure) = _LoadFailure;
}



