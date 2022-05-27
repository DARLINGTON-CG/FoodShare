// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'read_messages_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReadMessagesEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readAllStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? readAllStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readAllStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadAllStarted value) readAllStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadAllStarted value)? readAllStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadAllStarted value)? readAllStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadMessagesEventsCopyWith<$Res> {
  factory $ReadMessagesEventsCopyWith(
          ReadMessagesEvents value, $Res Function(ReadMessagesEvents) then) =
      _$ReadMessagesEventsCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReadMessagesEventsCopyWithImpl<$Res>
    implements $ReadMessagesEventsCopyWith<$Res> {
  _$ReadMessagesEventsCopyWithImpl(this._value, this._then);

  final ReadMessagesEvents _value;
  // ignore: unused_field
  final $Res Function(ReadMessagesEvents) _then;
}

/// @nodoc
abstract class _$$ReadAllStartedCopyWith<$Res> {
  factory _$$ReadAllStartedCopyWith(
          _$ReadAllStarted value, $Res Function(_$ReadAllStarted) then) =
      __$$ReadAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReadAllStartedCopyWithImpl<$Res>
    extends _$ReadMessagesEventsCopyWithImpl<$Res>
    implements _$$ReadAllStartedCopyWith<$Res> {
  __$$ReadAllStartedCopyWithImpl(
      _$ReadAllStarted _value, $Res Function(_$ReadAllStarted) _then)
      : super(_value, (v) => _then(v as _$ReadAllStarted));

  @override
  _$ReadAllStarted get _value => super._value as _$ReadAllStarted;
}

/// @nodoc

class _$ReadAllStarted implements ReadAllStarted {
  const _$ReadAllStarted();

  @override
  String toString() {
    return 'ReadMessagesEvents.readAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReadAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readAllStarted,
  }) {
    return readAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? readAllStarted,
  }) {
    return readAllStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readAllStarted,
    required TResult orElse(),
  }) {
    if (readAllStarted != null) {
      return readAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadAllStarted value) readAllStarted,
  }) {
    return readAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadAllStarted value)? readAllStarted,
  }) {
    return readAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadAllStarted value)? readAllStarted,
    required TResult orElse(),
  }) {
    if (readAllStarted != null) {
      return readAllStarted(this);
    }
    return orElse();
  }
}

abstract class ReadAllStarted implements ReadMessagesEvents {
  const factory ReadAllStarted() = _$ReadAllStarted;
}

/// @nodoc
mixin _$ReadMessagesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(KtList<ChatRoom> chatRoom) loadSuccess,
    required TResult Function(MessageFailure messageFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<ChatRoom> chatRoom)? loadSuccess,
    TResult Function(MessageFailure messageFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<ChatRoom> chatRoom)? loadSuccess,
    TResult Function(MessageFailure messageFailure)? loadFailure,
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
abstract class $ReadMessagesStateCopyWith<$Res> {
  factory $ReadMessagesStateCopyWith(
          ReadMessagesState value, $Res Function(ReadMessagesState) then) =
      _$ReadMessagesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReadMessagesStateCopyWithImpl<$Res>
    implements $ReadMessagesStateCopyWith<$Res> {
  _$ReadMessagesStateCopyWithImpl(this._value, this._then);

  final ReadMessagesState _value;
  // ignore: unused_field
  final $Res Function(ReadMessagesState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ReadMessagesStateCopyWithImpl<$Res>
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
    return 'ReadMessagesState.initial()';
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
    required TResult Function(KtList<ChatRoom> chatRoom) loadSuccess,
    required TResult Function(MessageFailure messageFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<ChatRoom> chatRoom)? loadSuccess,
    TResult Function(MessageFailure messageFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<ChatRoom> chatRoom)? loadSuccess,
    TResult Function(MessageFailure messageFailure)? loadFailure,
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

abstract class _Initial implements ReadMessagesState {
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
    extends _$ReadMessagesStateCopyWithImpl<$Res>
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
    return 'ReadMessagesState.loadingProgress()';
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
    required TResult Function(KtList<ChatRoom> chatRoom) loadSuccess,
    required TResult Function(MessageFailure messageFailure) loadFailure,
  }) {
    return loadingProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<ChatRoom> chatRoom)? loadSuccess,
    TResult Function(MessageFailure messageFailure)? loadFailure,
  }) {
    return loadingProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<ChatRoom> chatRoom)? loadSuccess,
    TResult Function(MessageFailure messageFailure)? loadFailure,
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

abstract class _LoadingProgress implements ReadMessagesState {
  const factory _LoadingProgress() = _$_LoadingProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<ChatRoom> chatRoom});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$ReadMessagesStateCopyWithImpl<$Res>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _$_LoadSuccess));

  @override
  _$_LoadSuccess get _value => super._value as _$_LoadSuccess;

  @override
  $Res call({
    Object? chatRoom = freezed,
  }) {
    return _then(_$_LoadSuccess(
      chatRoom == freezed
          ? _value.chatRoom
          : chatRoom // ignore: cast_nullable_to_non_nullable
              as KtList<ChatRoom>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.chatRoom);

  @override
  final KtList<ChatRoom> chatRoom;

  @override
  String toString() {
    return 'ReadMessagesState.loadSuccess(chatRoom: $chatRoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality().equals(other.chatRoom, chatRoom));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(chatRoom));

  @JsonKey(ignore: true)
  @override
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(KtList<ChatRoom> chatRoom) loadSuccess,
    required TResult Function(MessageFailure messageFailure) loadFailure,
  }) {
    return loadSuccess(chatRoom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<ChatRoom> chatRoom)? loadSuccess,
    TResult Function(MessageFailure messageFailure)? loadFailure,
  }) {
    return loadSuccess?.call(chatRoom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<ChatRoom> chatRoom)? loadSuccess,
    TResult Function(MessageFailure messageFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(chatRoom);
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

abstract class _LoadSuccess implements ReadMessagesState {
  const factory _LoadSuccess(final KtList<ChatRoom> chatRoom) = _$_LoadSuccess;

  KtList<ChatRoom> get chatRoom => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  $Res call({MessageFailure messageFailure});

  $MessageFailureCopyWith<$Res> get messageFailure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$ReadMessagesStateCopyWithImpl<$Res>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, (v) => _then(v as _$_LoadFailure));

  @override
  _$_LoadFailure get _value => super._value as _$_LoadFailure;

  @override
  $Res call({
    Object? messageFailure = freezed,
  }) {
    return _then(_$_LoadFailure(
      messageFailure == freezed
          ? _value.messageFailure
          : messageFailure // ignore: cast_nullable_to_non_nullable
              as MessageFailure,
    ));
  }

  @override
  $MessageFailureCopyWith<$Res> get messageFailure {
    return $MessageFailureCopyWith<$Res>(_value.messageFailure, (value) {
      return _then(_value.copyWith(messageFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.messageFailure);

  @override
  final MessageFailure messageFailure;

  @override
  String toString() {
    return 'ReadMessagesState.loadFailure(messageFailure: $messageFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            const DeepCollectionEquality()
                .equals(other.messageFailure, messageFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(messageFailure));

  @JsonKey(ignore: true)
  @override
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(KtList<ChatRoom> chatRoom) loadSuccess,
    required TResult Function(MessageFailure messageFailure) loadFailure,
  }) {
    return loadFailure(messageFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<ChatRoom> chatRoom)? loadSuccess,
    TResult Function(MessageFailure messageFailure)? loadFailure,
  }) {
    return loadFailure?.call(messageFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(KtList<ChatRoom> chatRoom)? loadSuccess,
    TResult Function(MessageFailure messageFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(messageFailure);
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

abstract class _LoadFailure implements ReadMessagesState {
  const factory _LoadFailure(final MessageFailure messageFailure) =
      _$_LoadFailure;

  MessageFailure get messageFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
