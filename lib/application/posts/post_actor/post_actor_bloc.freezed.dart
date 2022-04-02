// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostActorEventTearOff {
  const _$PostActorEventTearOff();

  _ActionPerformed actionPerformed(Post post) {
    return _ActionPerformed(
      post,
    );
  }
}

/// @nodoc
const $PostActorEvent = _$PostActorEventTearOff();

/// @nodoc
mixin _$PostActorEvent {
  Post get post => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) actionPerformed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? actionPerformed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? actionPerformed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActionPerformed value) actionPerformed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ActionPerformed value)? actionPerformed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActionPerformed value)? actionPerformed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostActorEventCopyWith<PostActorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostActorEventCopyWith<$Res> {
  factory $PostActorEventCopyWith(
          PostActorEvent value, $Res Function(PostActorEvent) then) =
      _$PostActorEventCopyWithImpl<$Res>;
  $Res call({Post post});

  $PostCopyWith<$Res> get post;
}

/// @nodoc
class _$PostActorEventCopyWithImpl<$Res>
    implements $PostActorEventCopyWith<$Res> {
  _$PostActorEventCopyWithImpl(this._value, this._then);

  final PostActorEvent _value;
  // ignore: unused_field
  final $Res Function(PostActorEvent) _then;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(_value.copyWith(
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }

  @override
  $PostCopyWith<$Res> get post {
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

/// @nodoc
abstract class _$ActionPerformedCopyWith<$Res>
    implements $PostActorEventCopyWith<$Res> {
  factory _$ActionPerformedCopyWith(
          _ActionPerformed value, $Res Function(_ActionPerformed) then) =
      __$ActionPerformedCopyWithImpl<$Res>;
  @override
  $Res call({Post post});

  @override
  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$ActionPerformedCopyWithImpl<$Res>
    extends _$PostActorEventCopyWithImpl<$Res>
    implements _$ActionPerformedCopyWith<$Res> {
  __$ActionPerformedCopyWithImpl(
      _ActionPerformed _value, $Res Function(_ActionPerformed) _then)
      : super(_value, (v) => _then(v as _ActionPerformed));

  @override
  _ActionPerformed get _value => super._value as _ActionPerformed;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(_ActionPerformed(
      post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }
}

/// @nodoc

class _$_ActionPerformed implements _ActionPerformed {
  const _$_ActionPerformed(this.post);

  @override
  final Post post;

  @override
  String toString() {
    return 'PostActorEvent.actionPerformed(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActionPerformed &&
            const DeepCollectionEquality().equals(other.post, post));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(post));

  @JsonKey(ignore: true)
  @override
  _$ActionPerformedCopyWith<_ActionPerformed> get copyWith =>
      __$ActionPerformedCopyWithImpl<_ActionPerformed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) actionPerformed,
  }) {
    return actionPerformed(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? actionPerformed,
  }) {
    return actionPerformed?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? actionPerformed,
    required TResult orElse(),
  }) {
    if (actionPerformed != null) {
      return actionPerformed(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActionPerformed value) actionPerformed,
  }) {
    return actionPerformed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ActionPerformed value)? actionPerformed,
  }) {
    return actionPerformed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActionPerformed value)? actionPerformed,
    required TResult orElse(),
  }) {
    if (actionPerformed != null) {
      return actionPerformed(this);
    }
    return orElse();
  }
}

abstract class _ActionPerformed implements PostActorEvent {
  const factory _ActionPerformed(Post post) = _$_ActionPerformed;

  @override
  Post get post;
  @override
  @JsonKey(ignore: true)
  _$ActionPerformedCopyWith<_ActionPerformed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PostActorStateTearOff {
  const _$PostActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionProgress actionProgress() {
    return const _ActionProgress();
  }

  _ActionFailure actionFailure(PostFailure postFailure) {
    return _ActionFailure(
      postFailure,
    );
  }

  _ActionSuccess actionSuccess() {
    return const _ActionSuccess();
  }
}

/// @nodoc
const $PostActorState = _$PostActorStateTearOff();

/// @nodoc
mixin _$PostActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionProgress,
    required TResult Function(PostFailure postFailure) actionFailure,
    required TResult Function() actionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionProgress,
    TResult Function(PostFailure postFailure)? actionFailure,
    TResult Function()? actionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionProgress,
    TResult Function(PostFailure postFailure)? actionFailure,
    TResult Function()? actionSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionProgress value) actionProgress,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_ActionSuccess value) actionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionProgress value)? actionProgress,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_ActionSuccess value)? actionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionProgress value)? actionProgress,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_ActionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostActorStateCopyWith<$Res> {
  factory $PostActorStateCopyWith(
          PostActorState value, $Res Function(PostActorState) then) =
      _$PostActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostActorStateCopyWithImpl<$Res>
    implements $PostActorStateCopyWith<$Res> {
  _$PostActorStateCopyWithImpl(this._value, this._then);

  final PostActorState _value;
  // ignore: unused_field
  final $Res Function(PostActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PostActorStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PostActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionProgress,
    required TResult Function(PostFailure postFailure) actionFailure,
    required TResult Function() actionSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionProgress,
    TResult Function(PostFailure postFailure)? actionFailure,
    TResult Function()? actionSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionProgress,
    TResult Function(PostFailure postFailure)? actionFailure,
    TResult Function()? actionSuccess,
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
    required TResult Function(_ActionProgress value) actionProgress,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_ActionSuccess value) actionSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionProgress value)? actionProgress,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_ActionSuccess value)? actionSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionProgress value)? actionProgress,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_ActionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PostActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionProgressCopyWith<$Res> {
  factory _$ActionProgressCopyWith(
          _ActionProgress value, $Res Function(_ActionProgress) then) =
      __$ActionProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionProgressCopyWithImpl<$Res>
    extends _$PostActorStateCopyWithImpl<$Res>
    implements _$ActionProgressCopyWith<$Res> {
  __$ActionProgressCopyWithImpl(
      _ActionProgress _value, $Res Function(_ActionProgress) _then)
      : super(_value, (v) => _then(v as _ActionProgress));

  @override
  _ActionProgress get _value => super._value as _ActionProgress;
}

/// @nodoc

class _$_ActionProgress implements _ActionProgress {
  const _$_ActionProgress();

  @override
  String toString() {
    return 'PostActorState.actionProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ActionProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionProgress,
    required TResult Function(PostFailure postFailure) actionFailure,
    required TResult Function() actionSuccess,
  }) {
    return actionProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionProgress,
    TResult Function(PostFailure postFailure)? actionFailure,
    TResult Function()? actionSuccess,
  }) {
    return actionProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionProgress,
    TResult Function(PostFailure postFailure)? actionFailure,
    TResult Function()? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionProgress != null) {
      return actionProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionProgress value) actionProgress,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_ActionSuccess value) actionSuccess,
  }) {
    return actionProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionProgress value)? actionProgress,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_ActionSuccess value)? actionSuccess,
  }) {
    return actionProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionProgress value)? actionProgress,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_ActionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionProgress != null) {
      return actionProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionProgress implements PostActorState {
  const factory _ActionProgress() = _$_ActionProgress;
}

/// @nodoc
abstract class _$ActionFailureCopyWith<$Res> {
  factory _$ActionFailureCopyWith(
          _ActionFailure value, $Res Function(_ActionFailure) then) =
      __$ActionFailureCopyWithImpl<$Res>;
  $Res call({PostFailure postFailure});

  $PostFailureCopyWith<$Res> get postFailure;
}

/// @nodoc
class __$ActionFailureCopyWithImpl<$Res>
    extends _$PostActorStateCopyWithImpl<$Res>
    implements _$ActionFailureCopyWith<$Res> {
  __$ActionFailureCopyWithImpl(
      _ActionFailure _value, $Res Function(_ActionFailure) _then)
      : super(_value, (v) => _then(v as _ActionFailure));

  @override
  _ActionFailure get _value => super._value as _ActionFailure;

  @override
  $Res call({
    Object? postFailure = freezed,
  }) {
    return _then(_ActionFailure(
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

class _$_ActionFailure implements _ActionFailure {
  const _$_ActionFailure(this.postFailure);

  @override
  final PostFailure postFailure;

  @override
  String toString() {
    return 'PostActorState.actionFailure(postFailure: $postFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActionFailure &&
            const DeepCollectionEquality()
                .equals(other.postFailure, postFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(postFailure));

  @JsonKey(ignore: true)
  @override
  _$ActionFailureCopyWith<_ActionFailure> get copyWith =>
      __$ActionFailureCopyWithImpl<_ActionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionProgress,
    required TResult Function(PostFailure postFailure) actionFailure,
    required TResult Function() actionSuccess,
  }) {
    return actionFailure(postFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionProgress,
    TResult Function(PostFailure postFailure)? actionFailure,
    TResult Function()? actionSuccess,
  }) {
    return actionFailure?.call(postFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionProgress,
    TResult Function(PostFailure postFailure)? actionFailure,
    TResult Function()? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(postFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionProgress value) actionProgress,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_ActionSuccess value) actionSuccess,
  }) {
    return actionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionProgress value)? actionProgress,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_ActionSuccess value)? actionSuccess,
  }) {
    return actionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionProgress value)? actionProgress,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_ActionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(this);
    }
    return orElse();
  }
}

abstract class _ActionFailure implements PostActorState {
  const factory _ActionFailure(PostFailure postFailure) = _$_ActionFailure;

  PostFailure get postFailure;
  @JsonKey(ignore: true)
  _$ActionFailureCopyWith<_ActionFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ActionSuccessCopyWith<$Res> {
  factory _$ActionSuccessCopyWith(
          _ActionSuccess value, $Res Function(_ActionSuccess) then) =
      __$ActionSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionSuccessCopyWithImpl<$Res>
    extends _$PostActorStateCopyWithImpl<$Res>
    implements _$ActionSuccessCopyWith<$Res> {
  __$ActionSuccessCopyWithImpl(
      _ActionSuccess _value, $Res Function(_ActionSuccess) _then)
      : super(_value, (v) => _then(v as _ActionSuccess));

  @override
  _ActionSuccess get _value => super._value as _ActionSuccess;
}

/// @nodoc

class _$_ActionSuccess implements _ActionSuccess {
  const _$_ActionSuccess();

  @override
  String toString() {
    return 'PostActorState.actionSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ActionSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionProgress,
    required TResult Function(PostFailure postFailure) actionFailure,
    required TResult Function() actionSuccess,
  }) {
    return actionSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionProgress,
    TResult Function(PostFailure postFailure)? actionFailure,
    TResult Function()? actionSuccess,
  }) {
    return actionSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionProgress,
    TResult Function(PostFailure postFailure)? actionFailure,
    TResult Function()? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionProgress value) actionProgress,
    required TResult Function(_ActionFailure value) actionFailure,
    required TResult Function(_ActionSuccess value) actionSuccess,
  }) {
    return actionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionProgress value)? actionProgress,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_ActionSuccess value)? actionSuccess,
  }) {
    return actionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionProgress value)? actionProgress,
    TResult Function(_ActionFailure value)? actionFailure,
    TResult Function(_ActionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(this);
    }
    return orElse();
  }
}

abstract class _ActionSuccess implements PostActorState {
  const factory _ActionSuccess() = _$_ActionSuccess;
}
