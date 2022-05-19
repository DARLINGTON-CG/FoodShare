// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_messages_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateMessagesEventsTearOff {
  const _$CreateMessagesEventsTearOff();

  Initialized initialized(Option<ChatRoom> initialChat) {
    return Initialized(
      initialChat,
    );
  }

  MessageChanged messageChanged(KtList<MessagePrimitive> message) {
    return MessageChanged(
      message,
    );
  }

  Saved saved() {
    return const Saved();
  }
}

/// @nodoc
const $CreateMessagesEvents = _$CreateMessagesEventsTearOff();

/// @nodoc
mixin _$CreateMessagesEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<ChatRoom> initialChat) initialized,
    required TResult Function(KtList<MessagePrimitive> message) messageChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<ChatRoom> initialChat)? initialized,
    TResult Function(KtList<MessagePrimitive> message)? messageChanged,
    TResult Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<ChatRoom> initialChat)? initialized,
    TResult Function(KtList<MessagePrimitive> message)? messageChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMessagesEventsCopyWith<$Res> {
  factory $CreateMessagesEventsCopyWith(CreateMessagesEvents value,
          $Res Function(CreateMessagesEvents) then) =
      _$CreateMessagesEventsCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateMessagesEventsCopyWithImpl<$Res>
    implements $CreateMessagesEventsCopyWith<$Res> {
  _$CreateMessagesEventsCopyWithImpl(this._value, this._then);

  final CreateMessagesEvents _value;
  // ignore: unused_field
  final $Res Function(CreateMessagesEvents) _then;
}

/// @nodoc
abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
  $Res call({Option<ChatRoom> initialChat});
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res>
    extends _$CreateMessagesEventsCopyWithImpl<$Res>
    implements $InitializedCopyWith<$Res> {
  _$InitializedCopyWithImpl(
      Initialized _value, $Res Function(Initialized) _then)
      : super(_value, (v) => _then(v as Initialized));

  @override
  Initialized get _value => super._value as Initialized;

  @override
  $Res call({
    Object? initialChat = freezed,
  }) {
    return _then(Initialized(
      initialChat == freezed
          ? _value.initialChat
          : initialChat // ignore: cast_nullable_to_non_nullable
              as Option<ChatRoom>,
    ));
  }
}

/// @nodoc

class _$Initialized implements Initialized {
  const _$Initialized(this.initialChat);

  @override
  final Option<ChatRoom> initialChat;

  @override
  String toString() {
    return 'CreateMessagesEvents.initialized(initialChat: $initialChat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Initialized &&
            const DeepCollectionEquality()
                .equals(other.initialChat, initialChat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(initialChat));

  @JsonKey(ignore: true)
  @override
  $InitializedCopyWith<Initialized> get copyWith =>
      _$InitializedCopyWithImpl<Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<ChatRoom> initialChat) initialized,
    required TResult Function(KtList<MessagePrimitive> message) messageChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialChat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<ChatRoom> initialChat)? initialized,
    TResult Function(KtList<MessagePrimitive> message)? messageChanged,
    TResult Function()? saved,
  }) {
    return initialized?.call(initialChat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<ChatRoom> initialChat)? initialized,
    TResult Function(KtList<MessagePrimitive> message)? messageChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialChat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements CreateMessagesEvents {
  const factory Initialized(Option<ChatRoom> initialChat) = _$Initialized;

  Option<ChatRoom> get initialChat;
  @JsonKey(ignore: true)
  $InitializedCopyWith<Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageChangedCopyWith<$Res> {
  factory $MessageChangedCopyWith(
          MessageChanged value, $Res Function(MessageChanged) then) =
      _$MessageChangedCopyWithImpl<$Res>;
  $Res call({KtList<MessagePrimitive> message});
}

/// @nodoc
class _$MessageChangedCopyWithImpl<$Res>
    extends _$CreateMessagesEventsCopyWithImpl<$Res>
    implements $MessageChangedCopyWith<$Res> {
  _$MessageChangedCopyWithImpl(
      MessageChanged _value, $Res Function(MessageChanged) _then)
      : super(_value, (v) => _then(v as MessageChanged));

  @override
  MessageChanged get _value => super._value as MessageChanged;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(MessageChanged(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as KtList<MessagePrimitive>,
    ));
  }
}

/// @nodoc

class _$MessageChanged implements MessageChanged {
  const _$MessageChanged(this.message);

  @override
  final KtList<MessagePrimitive> message;

  @override
  String toString() {
    return 'CreateMessagesEvents.messageChanged(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessageChanged &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $MessageChangedCopyWith<MessageChanged> get copyWith =>
      _$MessageChangedCopyWithImpl<MessageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<ChatRoom> initialChat) initialized,
    required TResult Function(KtList<MessagePrimitive> message) messageChanged,
    required TResult Function() saved,
  }) {
    return messageChanged(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<ChatRoom> initialChat)? initialized,
    TResult Function(KtList<MessagePrimitive> message)? messageChanged,
    TResult Function()? saved,
  }) {
    return messageChanged?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<ChatRoom> initialChat)? initialized,
    TResult Function(KtList<MessagePrimitive> message)? messageChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (messageChanged != null) {
      return messageChanged(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(Saved value) saved,
  }) {
    return messageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(Saved value)? saved,
  }) {
    return messageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (messageChanged != null) {
      return messageChanged(this);
    }
    return orElse();
  }
}

abstract class MessageChanged implements CreateMessagesEvents {
  const factory MessageChanged(KtList<MessagePrimitive> message) =
      _$MessageChanged;

  KtList<MessagePrimitive> get message;
  @JsonKey(ignore: true)
  $MessageChangedCopyWith<MessageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedCopyWith<$Res> {
  factory $SavedCopyWith(Saved value, $Res Function(Saved) then) =
      _$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SavedCopyWithImpl<$Res> extends _$CreateMessagesEventsCopyWithImpl<$Res>
    implements $SavedCopyWith<$Res> {
  _$SavedCopyWithImpl(Saved _value, $Res Function(Saved) _then)
      : super(_value, (v) => _then(v as Saved));

  @override
  Saved get _value => super._value as Saved;
}

/// @nodoc

class _$Saved implements Saved {
  const _$Saved();

  @override
  String toString() {
    return 'CreateMessagesEvents.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<ChatRoom> initialChat) initialized,
    required TResult Function(KtList<MessagePrimitive> message) messageChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<ChatRoom> initialChat)? initialized,
    TResult Function(KtList<MessagePrimitive> message)? messageChanged,
    TResult Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<ChatRoom> initialChat)? initialized,
    TResult Function(KtList<MessagePrimitive> message)? messageChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class Saved implements CreateMessagesEvents {
  const factory Saved() = _$Saved;
}

/// @nodoc
class _$CreateMessagesStateTearOff {
  const _$CreateMessagesStateTearOff();

  _CreateMessagesState call(
      {required ChatRoom data,
      required bool showErrorMessages,
      required bool isSaving,
      required bool isEditing,
      required Option<Either<MessageFailure, Unit>> successOrFailure}) {
    return _CreateMessagesState(
      data: data,
      showErrorMessages: showErrorMessages,
      isSaving: isSaving,
      isEditing: isEditing,
      successOrFailure: successOrFailure,
    );
  }
}

/// @nodoc
const $CreateMessagesState = _$CreateMessagesStateTearOff();

/// @nodoc
mixin _$CreateMessagesState {
  ChatRoom get data => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  Option<Either<MessageFailure, Unit>> get successOrFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateMessagesStateCopyWith<CreateMessagesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMessagesStateCopyWith<$Res> {
  factory $CreateMessagesStateCopyWith(
          CreateMessagesState value, $Res Function(CreateMessagesState) then) =
      _$CreateMessagesStateCopyWithImpl<$Res>;
  $Res call(
      {ChatRoom data,
      bool showErrorMessages,
      bool isSaving,
      bool isEditing,
      Option<Either<MessageFailure, Unit>> successOrFailure});

  $ChatRoomCopyWith<$Res> get data;
}

/// @nodoc
class _$CreateMessagesStateCopyWithImpl<$Res>
    implements $CreateMessagesStateCopyWith<$Res> {
  _$CreateMessagesStateCopyWithImpl(this._value, this._then);

  final CreateMessagesState _value;
  // ignore: unused_field
  final $Res Function(CreateMessagesState) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? isEditing = freezed,
    Object? successOrFailure = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatRoom,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      successOrFailure: successOrFailure == freezed
          ? _value.successOrFailure
          : successOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<MessageFailure, Unit>>,
    ));
  }

  @override
  $ChatRoomCopyWith<$Res> get data {
    return $ChatRoomCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$CreateMessagesStateCopyWith<$Res>
    implements $CreateMessagesStateCopyWith<$Res> {
  factory _$CreateMessagesStateCopyWith(_CreateMessagesState value,
          $Res Function(_CreateMessagesState) then) =
      __$CreateMessagesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ChatRoom data,
      bool showErrorMessages,
      bool isSaving,
      bool isEditing,
      Option<Either<MessageFailure, Unit>> successOrFailure});

  @override
  $ChatRoomCopyWith<$Res> get data;
}

/// @nodoc
class __$CreateMessagesStateCopyWithImpl<$Res>
    extends _$CreateMessagesStateCopyWithImpl<$Res>
    implements _$CreateMessagesStateCopyWith<$Res> {
  __$CreateMessagesStateCopyWithImpl(
      _CreateMessagesState _value, $Res Function(_CreateMessagesState) _then)
      : super(_value, (v) => _then(v as _CreateMessagesState));

  @override
  _CreateMessagesState get _value => super._value as _CreateMessagesState;

  @override
  $Res call({
    Object? data = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? isEditing = freezed,
    Object? successOrFailure = freezed,
  }) {
    return _then(_CreateMessagesState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatRoom,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      successOrFailure: successOrFailure == freezed
          ? _value.successOrFailure
          : successOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<MessageFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_CreateMessagesState implements _CreateMessagesState {
  const _$_CreateMessagesState(
      {required this.data,
      required this.showErrorMessages,
      required this.isSaving,
      required this.isEditing,
      required this.successOrFailure});

  @override
  final ChatRoom data;
  @override
  final bool showErrorMessages;
  @override
  final bool isSaving;
  @override
  final bool isEditing;
  @override
  final Option<Either<MessageFailure, Unit>> successOrFailure;

  @override
  String toString() {
    return 'CreateMessagesState(data: $data, showErrorMessages: $showErrorMessages, isSaving: $isSaving, isEditing: $isEditing, successOrFailure: $successOrFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateMessagesState &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality()
                .equals(other.successOrFailure, successOrFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(successOrFailure));

  @JsonKey(ignore: true)
  @override
  _$CreateMessagesStateCopyWith<_CreateMessagesState> get copyWith =>
      __$CreateMessagesStateCopyWithImpl<_CreateMessagesState>(
          this, _$identity);
}

abstract class _CreateMessagesState implements CreateMessagesState {
  const factory _CreateMessagesState(
          {required ChatRoom data,
          required bool showErrorMessages,
          required bool isSaving,
          required bool isEditing,
          required Option<Either<MessageFailure, Unit>> successOrFailure}) =
      _$_CreateMessagesState;

  @override
  ChatRoom get data;
  @override
  bool get showErrorMessages;
  @override
  bool get isSaving;
  @override
  bool get isEditing;
  @override
  Option<Either<MessageFailure, Unit>> get successOrFailure;
  @override
  @JsonKey(ignore: true)
  _$CreateMessagesStateCopyWith<_CreateMessagesState> get copyWith =>
      throw _privateConstructorUsedError;
}
