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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$DeleteActionPerformedCopyWith<$Res>
    implements $PostActorEventCopyWith<$Res> {
  factory _$$DeleteActionPerformedCopyWith(_$DeleteActionPerformed value,
          $Res Function(_$DeleteActionPerformed) then) =
      __$$DeleteActionPerformedCopyWithImpl<$Res>;
  @override
  $Res call({Post post});

  @override
  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$$DeleteActionPerformedCopyWithImpl<$Res>
    extends _$PostActorEventCopyWithImpl<$Res>
    implements _$$DeleteActionPerformedCopyWith<$Res> {
  __$$DeleteActionPerformedCopyWithImpl(_$DeleteActionPerformed _value,
      $Res Function(_$DeleteActionPerformed) _then)
      : super(_value, (v) => _then(v as _$DeleteActionPerformed));

  @override
  _$DeleteActionPerformed get _value => super._value as _$DeleteActionPerformed;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(_$DeleteActionPerformed(
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
            other is _$DeleteActionPerformed &&
            const DeepCollectionEquality().equals(other.post, post));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(post));

  @JsonKey(ignore: true)
  @override
  _$$DeleteActionPerformedCopyWith<_$DeleteActionPerformed> get copyWith =>
      __$$DeleteActionPerformedCopyWithImpl<_$DeleteActionPerformed>(
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
  const factory DeleteActionPerformed(final Post post) =
      _$DeleteActionPerformed;

  @override
  Post get post => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$DeleteActionPerformedCopyWith<_$DeleteActionPerformed> get copyWith =>
      throw _privateConstructorUsedError;
}

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
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$PostActorStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;
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
        (other.runtimeType == runtimeType && other is _$Initial);
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
abstract class _$$DeletionProgressCopyWith<$Res> {
  factory _$$DeletionProgressCopyWith(
          _$DeletionProgress value, $Res Function(_$DeletionProgress) then) =
      __$$DeletionProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeletionProgressCopyWithImpl<$Res>
    extends _$PostActorStateCopyWithImpl<$Res>
    implements _$$DeletionProgressCopyWith<$Res> {
  __$$DeletionProgressCopyWithImpl(
      _$DeletionProgress _value, $Res Function(_$DeletionProgress) _then)
      : super(_value, (v) => _then(v as _$DeletionProgress));

  @override
  _$DeletionProgress get _value => super._value as _$DeletionProgress;
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
        (other.runtimeType == runtimeType && other is _$DeletionProgress);
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
abstract class _$$DeletionFailureCopyWith<$Res> {
  factory _$$DeletionFailureCopyWith(
          _$DeletionFailure value, $Res Function(_$DeletionFailure) then) =
      __$$DeletionFailureCopyWithImpl<$Res>;
  $Res call({PostFailure postFailure});

  $PostFailureCopyWith<$Res> get postFailure;
}

/// @nodoc
class __$$DeletionFailureCopyWithImpl<$Res>
    extends _$PostActorStateCopyWithImpl<$Res>
    implements _$$DeletionFailureCopyWith<$Res> {
  __$$DeletionFailureCopyWithImpl(
      _$DeletionFailure _value, $Res Function(_$DeletionFailure) _then)
      : super(_value, (v) => _then(v as _$DeletionFailure));

  @override
  _$DeletionFailure get _value => super._value as _$DeletionFailure;

  @override
  $Res call({
    Object? postFailure = freezed,
  }) {
    return _then(_$DeletionFailure(
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
            other is _$DeletionFailure &&
            const DeepCollectionEquality()
                .equals(other.postFailure, postFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(postFailure));

  @JsonKey(ignore: true)
  @override
  _$$DeletionFailureCopyWith<_$DeletionFailure> get copyWith =>
      __$$DeletionFailureCopyWithImpl<_$DeletionFailure>(this, _$identity);

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
  const factory DeletionFailure(final PostFailure postFailure) =
      _$DeletionFailure;

  PostFailure get postFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DeletionFailureCopyWith<_$DeletionFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletionSuccessCopyWith<$Res> {
  factory _$$DeletionSuccessCopyWith(
          _$DeletionSuccess value, $Res Function(_$DeletionSuccess) then) =
      __$$DeletionSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeletionSuccessCopyWithImpl<$Res>
    extends _$PostActorStateCopyWithImpl<$Res>
    implements _$$DeletionSuccessCopyWith<$Res> {
  __$$DeletionSuccessCopyWithImpl(
      _$DeletionSuccess _value, $Res Function(_$DeletionSuccess) _then)
      : super(_value, (v) => _then(v as _$DeletionSuccess));

  @override
  _$DeletionSuccess get _value => super._value as _$DeletionSuccess;
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
        (other.runtimeType == runtimeType && other is _$DeletionSuccess);
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
