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

  DeleteActionPerformed deleteActionPerformed(Post post) {
    return DeleteActionPerformed(
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
    required TResult Function(Post post) deleteActionPerformed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? deleteActionPerformed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? deleteActionPerformed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeleteActionPerformed value)
        deleteActionPerformed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeleteActionPerformed value)? deleteActionPerformed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteActionPerformed value)? deleteActionPerformed,
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
abstract class $DeleteActionPerformedCopyWith<$Res>
    implements $PostActorEventCopyWith<$Res> {
  factory $DeleteActionPerformedCopyWith(DeleteActionPerformed value,
          $Res Function(DeleteActionPerformed) then) =
      _$DeleteActionPerformedCopyWithImpl<$Res>;
  @override
  $Res call({Post post});

  @override
  $PostCopyWith<$Res> get post;
}

/// @nodoc
class _$DeleteActionPerformedCopyWithImpl<$Res>
    extends _$PostActorEventCopyWithImpl<$Res>
    implements $DeleteActionPerformedCopyWith<$Res> {
  _$DeleteActionPerformedCopyWithImpl(
      DeleteActionPerformed _value, $Res Function(DeleteActionPerformed) _then)
      : super(_value, (v) => _then(v as DeleteActionPerformed));

  @override
  DeleteActionPerformed get _value => super._value as DeleteActionPerformed;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(DeleteActionPerformed(
      post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }
}

/// @nodoc

class _$DeleteActionPerformed implements DeleteActionPerformed {
  const _$DeleteActionPerformed(this.post);

  @override
  final Post post;

  @override
  String toString() {
    return 'PostActorEvent.deleteActionPerformed(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteActionPerformed &&
            const DeepCollectionEquality().equals(other.post, post));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(post));

  @JsonKey(ignore: true)
  @override
  $DeleteActionPerformedCopyWith<DeleteActionPerformed> get copyWith =>
      _$DeleteActionPerformedCopyWithImpl<DeleteActionPerformed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) deleteActionPerformed,
  }) {
    return deleteActionPerformed(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? deleteActionPerformed,
  }) {
    return deleteActionPerformed?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? deleteActionPerformed,
    required TResult orElse(),
  }) {
    if (deleteActionPerformed != null) {
      return deleteActionPerformed(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeleteActionPerformed value)
        deleteActionPerformed,
  }) {
    return deleteActionPerformed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeleteActionPerformed value)? deleteActionPerformed,
  }) {
    return deleteActionPerformed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeleteActionPerformed value)? deleteActionPerformed,
    required TResult orElse(),
  }) {
    if (deleteActionPerformed != null) {
      return deleteActionPerformed(this);
    }
    return orElse();
  }
}

abstract class DeleteActionPerformed implements PostActorEvent {
  const factory DeleteActionPerformed(Post post) = _$DeleteActionPerformed;

  @override
  Post get post;
  @override
  @JsonKey(ignore: true)
  $DeleteActionPerformedCopyWith<DeleteActionPerformed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PostActorStateTearOff {
  const _$PostActorStateTearOff();

  Initial initial() {
    return const Initial();
  }

  DeletionProgress deletionProgress() {
    return const DeletionProgress();
  }

  DeletionFailure deletionFailure(PostFailure postFailure) {
    return DeletionFailure(
      postFailure,
    );
  }

  DeletionSuccess deletionSuccess() {
    return const DeletionSuccess();
  }
}

/// @nodoc
const $PostActorState = _$PostActorStateTearOff();

/// @nodoc
mixin _$PostActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deletionProgress,
    required TResult Function(PostFailure postFailure) deletionFailure,
    required TResult Function() deletionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deletionProgress,
    TResult Function(PostFailure postFailure)? deletionFailure,
    TResult Function()? deletionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deletionProgress,
    TResult Function(PostFailure postFailure)? deletionFailure,
    TResult Function()? deletionSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(DeletionProgress value) deletionProgress,
    required TResult Function(DeletionFailure value) deletionFailure,
    required TResult Function(DeletionSuccess value) deletionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DeletionProgress value)? deletionProgress,
    TResult Function(DeletionFailure value)? deletionFailure,
    TResult Function(DeletionSuccess value)? deletionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DeletionProgress value)? deletionProgress,
    TResult Function(DeletionFailure value)? deletionFailure,
    TResult Function(DeletionSuccess value)? deletionSuccess,
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
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$PostActorStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'PostActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deletionProgress,
    required TResult Function(PostFailure postFailure) deletionFailure,
    required TResult Function() deletionSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deletionProgress,
    TResult Function(PostFailure postFailure)? deletionFailure,
    TResult Function()? deletionSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deletionProgress,
    TResult Function(PostFailure postFailure)? deletionFailure,
    TResult Function()? deletionSuccess,
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
    required TResult Function(Initial value) initial,
    required TResult Function(DeletionProgress value) deletionProgress,
    required TResult Function(DeletionFailure value) deletionFailure,
    required TResult Function(DeletionSuccess value) deletionSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DeletionProgress value)? deletionProgress,
    TResult Function(DeletionFailure value)? deletionFailure,
    TResult Function(DeletionSuccess value)? deletionSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DeletionProgress value)? deletionProgress,
    TResult Function(DeletionFailure value)? deletionFailure,
    TResult Function(DeletionSuccess value)? deletionSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements PostActorState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $DeletionProgressCopyWith<$Res> {
  factory $DeletionProgressCopyWith(
          DeletionProgress value, $Res Function(DeletionProgress) then) =
      _$DeletionProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeletionProgressCopyWithImpl<$Res>
    extends _$PostActorStateCopyWithImpl<$Res>
    implements $DeletionProgressCopyWith<$Res> {
  _$DeletionProgressCopyWithImpl(
      DeletionProgress _value, $Res Function(DeletionProgress) _then)
      : super(_value, (v) => _then(v as DeletionProgress));

  @override
  DeletionProgress get _value => super._value as DeletionProgress;
}

/// @nodoc

class _$DeletionProgress implements DeletionProgress {
  const _$DeletionProgress();

  @override
  String toString() {
    return 'PostActorState.deletionProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeletionProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deletionProgress,
    required TResult Function(PostFailure postFailure) deletionFailure,
    required TResult Function() deletionSuccess,
  }) {
    return deletionProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deletionProgress,
    TResult Function(PostFailure postFailure)? deletionFailure,
    TResult Function()? deletionSuccess,
  }) {
    return deletionProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deletionProgress,
    TResult Function(PostFailure postFailure)? deletionFailure,
    TResult Function()? deletionSuccess,
    required TResult orElse(),
  }) {
    if (deletionProgress != null) {
      return deletionProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(DeletionProgress value) deletionProgress,
    required TResult Function(DeletionFailure value) deletionFailure,
    required TResult Function(DeletionSuccess value) deletionSuccess,
  }) {
    return deletionProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DeletionProgress value)? deletionProgress,
    TResult Function(DeletionFailure value)? deletionFailure,
    TResult Function(DeletionSuccess value)? deletionSuccess,
  }) {
    return deletionProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DeletionProgress value)? deletionProgress,
    TResult Function(DeletionFailure value)? deletionFailure,
    TResult Function(DeletionSuccess value)? deletionSuccess,
    required TResult orElse(),
  }) {
    if (deletionProgress != null) {
      return deletionProgress(this);
    }
    return orElse();
  }
}

abstract class DeletionProgress implements PostActorState {
  const factory DeletionProgress() = _$DeletionProgress;
}

/// @nodoc
abstract class $DeletionFailureCopyWith<$Res> {
  factory $DeletionFailureCopyWith(
          DeletionFailure value, $Res Function(DeletionFailure) then) =
      _$DeletionFailureCopyWithImpl<$Res>;
  $Res call({PostFailure postFailure});

  $PostFailureCopyWith<$Res> get postFailure;
}

/// @nodoc
class _$DeletionFailureCopyWithImpl<$Res>
    extends _$PostActorStateCopyWithImpl<$Res>
    implements $DeletionFailureCopyWith<$Res> {
  _$DeletionFailureCopyWithImpl(
      DeletionFailure _value, $Res Function(DeletionFailure) _then)
      : super(_value, (v) => _then(v as DeletionFailure));

  @override
  DeletionFailure get _value => super._value as DeletionFailure;

  @override
  $Res call({
    Object? postFailure = freezed,
  }) {
    return _then(DeletionFailure(
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

class _$DeletionFailure implements DeletionFailure {
  const _$DeletionFailure(this.postFailure);

  @override
  final PostFailure postFailure;

  @override
  String toString() {
    return 'PostActorState.deletionFailure(postFailure: $postFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeletionFailure &&
            const DeepCollectionEquality()
                .equals(other.postFailure, postFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(postFailure));

  @JsonKey(ignore: true)
  @override
  $DeletionFailureCopyWith<DeletionFailure> get copyWith =>
      _$DeletionFailureCopyWithImpl<DeletionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deletionProgress,
    required TResult Function(PostFailure postFailure) deletionFailure,
    required TResult Function() deletionSuccess,
  }) {
    return deletionFailure(postFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deletionProgress,
    TResult Function(PostFailure postFailure)? deletionFailure,
    TResult Function()? deletionSuccess,
  }) {
    return deletionFailure?.call(postFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deletionProgress,
    TResult Function(PostFailure postFailure)? deletionFailure,
    TResult Function()? deletionSuccess,
    required TResult orElse(),
  }) {
    if (deletionFailure != null) {
      return deletionFailure(postFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(DeletionProgress value) deletionProgress,
    required TResult Function(DeletionFailure value) deletionFailure,
    required TResult Function(DeletionSuccess value) deletionSuccess,
  }) {
    return deletionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DeletionProgress value)? deletionProgress,
    TResult Function(DeletionFailure value)? deletionFailure,
    TResult Function(DeletionSuccess value)? deletionSuccess,
  }) {
    return deletionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DeletionProgress value)? deletionProgress,
    TResult Function(DeletionFailure value)? deletionFailure,
    TResult Function(DeletionSuccess value)? deletionSuccess,
    required TResult orElse(),
  }) {
    if (deletionFailure != null) {
      return deletionFailure(this);
    }
    return orElse();
  }
}

abstract class DeletionFailure implements PostActorState {
  const factory DeletionFailure(PostFailure postFailure) = _$DeletionFailure;

  PostFailure get postFailure;
  @JsonKey(ignore: true)
  $DeletionFailureCopyWith<DeletionFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeletionSuccessCopyWith<$Res> {
  factory $DeletionSuccessCopyWith(
          DeletionSuccess value, $Res Function(DeletionSuccess) then) =
      _$DeletionSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeletionSuccessCopyWithImpl<$Res>
    extends _$PostActorStateCopyWithImpl<$Res>
    implements $DeletionSuccessCopyWith<$Res> {
  _$DeletionSuccessCopyWithImpl(
      DeletionSuccess _value, $Res Function(DeletionSuccess) _then)
      : super(_value, (v) => _then(v as DeletionSuccess));

  @override
  DeletionSuccess get _value => super._value as DeletionSuccess;
}

/// @nodoc

class _$DeletionSuccess implements DeletionSuccess {
  const _$DeletionSuccess();

  @override
  String toString() {
    return 'PostActorState.deletionSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeletionSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deletionProgress,
    required TResult Function(PostFailure postFailure) deletionFailure,
    required TResult Function() deletionSuccess,
  }) {
    return deletionSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deletionProgress,
    TResult Function(PostFailure postFailure)? deletionFailure,
    TResult Function()? deletionSuccess,
  }) {
    return deletionSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deletionProgress,
    TResult Function(PostFailure postFailure)? deletionFailure,
    TResult Function()? deletionSuccess,
    required TResult orElse(),
  }) {
    if (deletionSuccess != null) {
      return deletionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(DeletionProgress value) deletionProgress,
    required TResult Function(DeletionFailure value) deletionFailure,
    required TResult Function(DeletionSuccess value) deletionSuccess,
  }) {
    return deletionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DeletionProgress value)? deletionProgress,
    TResult Function(DeletionFailure value)? deletionFailure,
    TResult Function(DeletionSuccess value)? deletionSuccess,
  }) {
    return deletionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DeletionProgress value)? deletionProgress,
    TResult Function(DeletionFailure value)? deletionFailure,
    TResult Function(DeletionSuccess value)? deletionSuccess,
    required TResult orElse(),
  }) {
    if (deletionSuccess != null) {
      return deletionSuccess(this);
    }
    return orElse();
  }
}

abstract class DeletionSuccess implements PostActorState {
  const factory DeletionSuccess() = _$DeletionSuccess;
}
