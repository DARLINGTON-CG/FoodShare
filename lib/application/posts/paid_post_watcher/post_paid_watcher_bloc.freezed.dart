// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_paid_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostWatcherPaidEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllPaidStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllPaidStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllPaidStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchAllPaidStarted value) watchAllPaidStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchAllPaidStarted value)? watchAllPaidStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchAllPaidStarted value)? watchAllPaidStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostWatcherPaidEventCopyWith<$Res> {
  factory $PostWatcherPaidEventCopyWith(PostWatcherPaidEvent value,
          $Res Function(PostWatcherPaidEvent) then) =
      _$PostWatcherPaidEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostWatcherPaidEventCopyWithImpl<$Res>
    implements $PostWatcherPaidEventCopyWith<$Res> {
  _$PostWatcherPaidEventCopyWithImpl(this._value, this._then);

  final PostWatcherPaidEvent _value;
  // ignore: unused_field
  final $Res Function(PostWatcherPaidEvent) _then;
}

/// @nodoc
abstract class _$$WatchAllPaidStartedCopyWith<$Res> {
  factory _$$WatchAllPaidStartedCopyWith(_$WatchAllPaidStarted value,
          $Res Function(_$WatchAllPaidStarted) then) =
      __$$WatchAllPaidStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WatchAllPaidStartedCopyWithImpl<$Res>
    extends _$PostWatcherPaidEventCopyWithImpl<$Res>
    implements _$$WatchAllPaidStartedCopyWith<$Res> {
  __$$WatchAllPaidStartedCopyWithImpl(
      _$WatchAllPaidStarted _value, $Res Function(_$WatchAllPaidStarted) _then)
      : super(_value, (v) => _then(v as _$WatchAllPaidStarted));

  @override
  _$WatchAllPaidStarted get _value => super._value as _$WatchAllPaidStarted;
}

/// @nodoc

class _$WatchAllPaidStarted implements WatchAllPaidStarted {
  const _$WatchAllPaidStarted();

  @override
  String toString() {
    return 'PostWatcherPaidEvent.watchAllPaidStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WatchAllPaidStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllPaidStarted,
  }) {
    return watchAllPaidStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllPaidStarted,
  }) {
    return watchAllPaidStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllPaidStarted,
    required TResult orElse(),
  }) {
    if (watchAllPaidStarted != null) {
      return watchAllPaidStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchAllPaidStarted value) watchAllPaidStarted,
  }) {
    return watchAllPaidStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchAllPaidStarted value)? watchAllPaidStarted,
  }) {
    return watchAllPaidStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchAllPaidStarted value)? watchAllPaidStarted,
    required TResult orElse(),
  }) {
    if (watchAllPaidStarted != null) {
      return watchAllPaidStarted(this);
    }
    return orElse();
  }
}

abstract class WatchAllPaidStarted implements PostWatcherPaidEvent {
  const factory WatchAllPaidStarted() = _$WatchAllPaidStarted;
}

/// @nodoc
mixin _$PostPaidWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(KtList<Post> posts) loadSuccess,
    required TResult Function(PostFailure postFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Post> posts)? loadSuccess,
    TResult Function(PostFailure postFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Post> posts)? loadSuccess,
    TResult Function(PostFailure postFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingProgress value) loadingProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostPaidWatcherStateCopyWith<$Res> {
  factory $PostPaidWatcherStateCopyWith(PostPaidWatcherState value,
          $Res Function(PostPaidWatcherState) then) =
      _$PostPaidWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostPaidWatcherStateCopyWithImpl<$Res>
    implements $PostPaidWatcherStateCopyWith<$Res> {
  _$PostPaidWatcherStateCopyWithImpl(this._value, this._then);

  final PostPaidWatcherState _value;
  // ignore: unused_field
  final $Res Function(PostPaidWatcherState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PostPaidWatcherStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PostPaidWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(KtList<Post> posts) loadSuccess,
    required TResult Function(PostFailure postFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Post> posts)? loadSuccess,
    TResult Function(PostFailure postFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Post> posts)? loadSuccess,
    TResult Function(PostFailure postFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingProgress value) loadingProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PostPaidWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingProgressCopyWith<$Res> {
  factory _$$_LoadingProgressCopyWith(
          _$_LoadingProgress value, $Res Function(_$_LoadingProgress) then) =
      __$$_LoadingProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingProgressCopyWithImpl<$Res>
    extends _$PostPaidWatcherStateCopyWithImpl<$Res>
    implements _$$_LoadingProgressCopyWith<$Res> {
  __$$_LoadingProgressCopyWithImpl(
      _$_LoadingProgress _value, $Res Function(_$_LoadingProgress) _then)
      : super(_value, (v) => _then(v as _$_LoadingProgress));

  @override
  _$_LoadingProgress get _value => super._value as _$_LoadingProgress;
}

/// @nodoc

class _$_LoadingProgress implements _LoadingProgress {
  const _$_LoadingProgress();

  @override
  String toString() {
    return 'PostPaidWatcherState.loadingProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(KtList<Post> posts) loadSuccess,
    required TResult Function(PostFailure postFailure) loadFailure,
  }) {
    return loadingProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Post> posts)? loadSuccess,
    TResult Function(PostFailure postFailure)? loadFailure,
  }) {
    return loadingProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Post> posts)? loadSuccess,
    TResult Function(PostFailure postFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadingProgress != null) {
      return loadingProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingProgress value) loadingProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadingProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadingProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadingProgress != null) {
      return loadingProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadingProgress implements PostPaidWatcherState {
  const factory _LoadingProgress() = _$_LoadingProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Post> posts});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$PostPaidWatcherStateCopyWithImpl<$Res>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _$_LoadSuccess));

  @override
  _$_LoadSuccess get _value => super._value as _$_LoadSuccess;

  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(_$_LoadSuccess(
      posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as KtList<Post>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.posts);

  @override
  final KtList<Post> posts;

  @override
  String toString() {
    return 'PostPaidWatcherState.loadSuccess(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality().equals(other.posts, posts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(posts));

  @JsonKey(ignore: true)
  @override
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(KtList<Post> posts) loadSuccess,
    required TResult Function(PostFailure postFailure) loadFailure,
  }) {
    return loadSuccess(posts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Post> posts)? loadSuccess,
    TResult Function(PostFailure postFailure)? loadFailure,
  }) {
    return loadSuccess?.call(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Post> posts)? loadSuccess,
    TResult Function(PostFailure postFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingProgress value) loadingProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements PostPaidWatcherState {
  const factory _LoadSuccess(final KtList<Post> posts) = _$_LoadSuccess;

  KtList<Post> get posts => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  $Res call({PostFailure postFailure});

  $PostFailureCopyWith<$Res> get postFailure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$PostPaidWatcherStateCopyWithImpl<$Res>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, (v) => _then(v as _$_LoadFailure));

  @override
  _$_LoadFailure get _value => super._value as _$_LoadFailure;

  @override
  $Res call({
    Object? postFailure = freezed,
  }) {
    return _then(_$_LoadFailure(
      postFailure == freezed
          ? _value.postFailure
          : postFailure // ignore: cast_nullable_to_non_nullable
              as PostFailure,
    ));
  }

  @override
  $PostFailureCopyWith<$Res> get postFailure {
    return $PostFailureCopyWith<$Res>(_value.postFailure, (value) {
      return _then(_value.copyWith(postFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.postFailure);

  @override
  final PostFailure postFailure;

  @override
  String toString() {
    return 'PostPaidWatcherState.loadFailure(postFailure: $postFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            const DeepCollectionEquality()
                .equals(other.postFailure, postFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(postFailure));

  @JsonKey(ignore: true)
  @override
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(KtList<Post> posts) loadSuccess,
    required TResult Function(PostFailure postFailure) loadFailure,
  }) {
    return loadFailure(postFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Post> posts)? loadSuccess,
    TResult Function(PostFailure postFailure)? loadFailure,
  }) {
    return loadFailure?.call(postFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<Post> posts)? loadSuccess,
    TResult Function(PostFailure postFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(postFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingProgress value) loadingProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingProgress value)? loadingProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements PostPaidWatcherState {
  const factory _LoadFailure(final PostFailure postFailure) = _$_LoadFailure;

  PostFailure get postFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
