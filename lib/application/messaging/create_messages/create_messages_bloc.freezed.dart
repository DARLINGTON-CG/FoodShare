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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateMessagesEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<ChatRoom> initialChat) initialized,
    required TResult Function(String message) messageChanged,
    required TResult Function(File file) fileChanged,
    required TResult Function(bool isUpdate, bool isFile) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<ChatRoom> initialChat)? initialized,
    TResult Function(String message)? messageChanged,
    TResult Function(File file)? fileChanged,
    TResult Function(bool isUpdate, bool isFile)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<ChatRoom> initialChat)? initialized,
    TResult Function(String message)? messageChanged,
    TResult Function(File file)? fileChanged,
    TResult Function(bool isUpdate, bool isFile)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(FileChanged value) fileChanged,
    required TResult Function(Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(FileChanged value)? fileChanged,
    TResult Function(Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(FileChanged value)? fileChanged,
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
abstract class _$$InitializedCopyWith<$Res> {
  factory _$$InitializedCopyWith(
          _$Initialized value, $Res Function(_$Initialized) then) =
      __$$InitializedCopyWithImpl<$Res>;
  $Res call({Option<ChatRoom> initialChat});
}

/// @nodoc
class __$$InitializedCopyWithImpl<$Res>
    extends _$CreateMessagesEventsCopyWithImpl<$Res>
    implements _$$InitializedCopyWith<$Res> {
  __$$InitializedCopyWithImpl(
      _$Initialized _value, $Res Function(_$Initialized) _then)
      : super(_value, (v) => _then(v as _$Initialized));

  @override
  _$Initialized get _value => super._value as _$Initialized;

  @override
  $Res call({
    Object? initialChat = freezed,
  }) {
    return _then(_$Initialized(
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
            other is _$Initialized &&
            const DeepCollectionEquality()
                .equals(other.initialChat, initialChat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(initialChat));

  @JsonKey(ignore: true)
  @override
  _$$InitializedCopyWith<_$Initialized> get copyWith =>
      __$$InitializedCopyWithImpl<_$Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<ChatRoom> initialChat) initialized,
    required TResult Function(String message) messageChanged,
    required TResult Function(File file) fileChanged,
    required TResult Function(bool isUpdate, bool isFile) saved,
  }) {
    return initialized(initialChat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<ChatRoom> initialChat)? initialized,
    TResult Function(String message)? messageChanged,
    TResult Function(File file)? fileChanged,
    TResult Function(bool isUpdate, bool isFile)? saved,
  }) {
    return initialized?.call(initialChat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<ChatRoom> initialChat)? initialized,
    TResult Function(String message)? messageChanged,
    TResult Function(File file)? fileChanged,
    TResult Function(bool isUpdate, bool isFile)? saved,
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
    required TResult Function(FileChanged value) fileChanged,
    required TResult Function(Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(FileChanged value)? fileChanged,
    TResult Function(Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(FileChanged value)? fileChanged,
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
  const factory Initialized(final Option<ChatRoom> initialChat) = _$Initialized;

  Option<ChatRoom> get initialChat => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$InitializedCopyWith<_$Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageChangedCopyWith<$Res> {
  factory _$$MessageChangedCopyWith(
          _$MessageChanged value, $Res Function(_$MessageChanged) then) =
      __$$MessageChangedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$MessageChangedCopyWithImpl<$Res>
    extends _$CreateMessagesEventsCopyWithImpl<$Res>
    implements _$$MessageChangedCopyWith<$Res> {
  __$$MessageChangedCopyWithImpl(
      _$MessageChanged _value, $Res Function(_$MessageChanged) _then)
      : super(_value, (v) => _then(v as _$MessageChanged));

  @override
  _$MessageChanged get _value => super._value as _$MessageChanged;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$MessageChanged(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessageChanged implements MessageChanged {
  const _$MessageChanged(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CreateMessagesEvents.messageChanged(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageChanged &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$MessageChangedCopyWith<_$MessageChanged> get copyWith =>
      __$$MessageChangedCopyWithImpl<_$MessageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<ChatRoom> initialChat) initialized,
    required TResult Function(String message) messageChanged,
    required TResult Function(File file) fileChanged,
    required TResult Function(bool isUpdate, bool isFile) saved,
  }) {
    return messageChanged(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<ChatRoom> initialChat)? initialized,
    TResult Function(String message)? messageChanged,
    TResult Function(File file)? fileChanged,
    TResult Function(bool isUpdate, bool isFile)? saved,
  }) {
    return messageChanged?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<ChatRoom> initialChat)? initialized,
    TResult Function(String message)? messageChanged,
    TResult Function(File file)? fileChanged,
    TResult Function(bool isUpdate, bool isFile)? saved,
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
    required TResult Function(FileChanged value) fileChanged,
    required TResult Function(Saved value) saved,
  }) {
    return messageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(FileChanged value)? fileChanged,
    TResult Function(Saved value)? saved,
  }) {
    return messageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(FileChanged value)? fileChanged,
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
  const factory MessageChanged(final String message) = _$MessageChanged;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$MessageChangedCopyWith<_$MessageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FileChangedCopyWith<$Res> {
  factory _$$FileChangedCopyWith(
          _$FileChanged value, $Res Function(_$FileChanged) then) =
      __$$FileChangedCopyWithImpl<$Res>;
  $Res call({File file});
}

/// @nodoc
class __$$FileChangedCopyWithImpl<$Res>
    extends _$CreateMessagesEventsCopyWithImpl<$Res>
    implements _$$FileChangedCopyWith<$Res> {
  __$$FileChangedCopyWithImpl(
      _$FileChanged _value, $Res Function(_$FileChanged) _then)
      : super(_value, (v) => _then(v as _$FileChanged));

  @override
  _$FileChanged get _value => super._value as _$FileChanged;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_$FileChanged(
      file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$FileChanged implements FileChanged {
  const _$FileChanged(this.file);

  @override
  final File file;

  @override
  String toString() {
    return 'CreateMessagesEvents.fileChanged(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileChanged &&
            const DeepCollectionEquality().equals(other.file, file));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(file));

  @JsonKey(ignore: true)
  @override
  _$$FileChangedCopyWith<_$FileChanged> get copyWith =>
      __$$FileChangedCopyWithImpl<_$FileChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<ChatRoom> initialChat) initialized,
    required TResult Function(String message) messageChanged,
    required TResult Function(File file) fileChanged,
    required TResult Function(bool isUpdate, bool isFile) saved,
  }) {
    return fileChanged(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<ChatRoom> initialChat)? initialized,
    TResult Function(String message)? messageChanged,
    TResult Function(File file)? fileChanged,
    TResult Function(bool isUpdate, bool isFile)? saved,
  }) {
    return fileChanged?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<ChatRoom> initialChat)? initialized,
    TResult Function(String message)? messageChanged,
    TResult Function(File file)? fileChanged,
    TResult Function(bool isUpdate, bool isFile)? saved,
    required TResult orElse(),
  }) {
    if (fileChanged != null) {
      return fileChanged(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(FileChanged value) fileChanged,
    required TResult Function(Saved value) saved,
  }) {
    return fileChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(FileChanged value)? fileChanged,
    TResult Function(Saved value)? saved,
  }) {
    return fileChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(FileChanged value)? fileChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (fileChanged != null) {
      return fileChanged(this);
    }
    return orElse();
  }
}

abstract class FileChanged implements CreateMessagesEvents {
  const factory FileChanged(final File file) = _$FileChanged;

  File get file => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FileChangedCopyWith<_$FileChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedCopyWith<$Res> {
  factory _$$SavedCopyWith(_$Saved value, $Res Function(_$Saved) then) =
      __$$SavedCopyWithImpl<$Res>;
  $Res call({bool isUpdate, bool isFile});
}

/// @nodoc
class __$$SavedCopyWithImpl<$Res>
    extends _$CreateMessagesEventsCopyWithImpl<$Res>
    implements _$$SavedCopyWith<$Res> {
  __$$SavedCopyWithImpl(_$Saved _value, $Res Function(_$Saved) _then)
      : super(_value, (v) => _then(v as _$Saved));

  @override
  _$Saved get _value => super._value as _$Saved;

  @override
  $Res call({
    Object? isUpdate = freezed,
    Object? isFile = freezed,
  }) {
    return _then(_$Saved(
      isUpdate == freezed
          ? _value.isUpdate
          : isUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      isFile == freezed
          ? _value.isFile
          : isFile // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Saved implements Saved {
  const _$Saved(this.isUpdate, this.isFile);

  @override
  final bool isUpdate;
  @override
  final bool isFile;

  @override
  String toString() {
    return 'CreateMessagesEvents.saved(isUpdate: $isUpdate, isFile: $isFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Saved &&
            const DeepCollectionEquality().equals(other.isUpdate, isUpdate) &&
            const DeepCollectionEquality().equals(other.isFile, isFile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isUpdate),
      const DeepCollectionEquality().hash(isFile));

  @JsonKey(ignore: true)
  @override
  _$$SavedCopyWith<_$Saved> get copyWith =>
      __$$SavedCopyWithImpl<_$Saved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<ChatRoom> initialChat) initialized,
    required TResult Function(String message) messageChanged,
    required TResult Function(File file) fileChanged,
    required TResult Function(bool isUpdate, bool isFile) saved,
  }) {
    return saved(isUpdate, isFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<ChatRoom> initialChat)? initialized,
    TResult Function(String message)? messageChanged,
    TResult Function(File file)? fileChanged,
    TResult Function(bool isUpdate, bool isFile)? saved,
  }) {
    return saved?.call(isUpdate, isFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<ChatRoom> initialChat)? initialized,
    TResult Function(String message)? messageChanged,
    TResult Function(File file)? fileChanged,
    TResult Function(bool isUpdate, bool isFile)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(isUpdate, isFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(FileChanged value) fileChanged,
    required TResult Function(Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(FileChanged value)? fileChanged,
    TResult Function(Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(FileChanged value)? fileChanged,
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
  const factory Saved(final bool isUpdate, final bool isFile) = _$Saved;

  bool get isUpdate => throw _privateConstructorUsedError;
  bool get isFile => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SavedCopyWith<_$Saved> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateMessagesState {
  ChatRoom get data => throw _privateConstructorUsedError;
  String get currentMessage => throw _privateConstructorUsedError;
  File? get currentFile => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get canUpdate => throw _privateConstructorUsedError;
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
      String currentMessage,
      File? currentFile,
      bool showErrorMessages,
      bool isSaving,
      bool isEditing,
      bool canUpdate,
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
    Object? currentMessage = freezed,
    Object? currentFile = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? isEditing = freezed,
    Object? canUpdate = freezed,
    Object? successOrFailure = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatRoom,
      currentMessage: currentMessage == freezed
          ? _value.currentMessage
          : currentMessage // ignore: cast_nullable_to_non_nullable
              as String,
      currentFile: currentFile == freezed
          ? _value.currentFile
          : currentFile // ignore: cast_nullable_to_non_nullable
              as File?,
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
      canUpdate: canUpdate == freezed
          ? _value.canUpdate
          : canUpdate // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_CreateMessagesStateCopyWith<$Res>
    implements $CreateMessagesStateCopyWith<$Res> {
  factory _$$_CreateMessagesStateCopyWith(_$_CreateMessagesState value,
          $Res Function(_$_CreateMessagesState) then) =
      __$$_CreateMessagesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ChatRoom data,
      String currentMessage,
      File? currentFile,
      bool showErrorMessages,
      bool isSaving,
      bool isEditing,
      bool canUpdate,
      Option<Either<MessageFailure, Unit>> successOrFailure});

  @override
  $ChatRoomCopyWith<$Res> get data;
}

/// @nodoc
class __$$_CreateMessagesStateCopyWithImpl<$Res>
    extends _$CreateMessagesStateCopyWithImpl<$Res>
    implements _$$_CreateMessagesStateCopyWith<$Res> {
  __$$_CreateMessagesStateCopyWithImpl(_$_CreateMessagesState _value,
      $Res Function(_$_CreateMessagesState) _then)
      : super(_value, (v) => _then(v as _$_CreateMessagesState));

  @override
  _$_CreateMessagesState get _value => super._value as _$_CreateMessagesState;

  @override
  $Res call({
    Object? data = freezed,
    Object? currentMessage = freezed,
    Object? currentFile = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? isEditing = freezed,
    Object? canUpdate = freezed,
    Object? successOrFailure = freezed,
  }) {
    return _then(_$_CreateMessagesState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatRoom,
      currentMessage: currentMessage == freezed
          ? _value.currentMessage
          : currentMessage // ignore: cast_nullable_to_non_nullable
              as String,
      currentFile: currentFile == freezed
          ? _value.currentFile
          : currentFile // ignore: cast_nullable_to_non_nullable
              as File?,
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
      canUpdate: canUpdate == freezed
          ? _value.canUpdate
          : canUpdate // ignore: cast_nullable_to_non_nullable
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
      required this.currentMessage,
      required this.currentFile,
      required this.showErrorMessages,
      required this.isSaving,
      required this.isEditing,
      required this.canUpdate,
      required this.successOrFailure});

  @override
  final ChatRoom data;
  @override
  final String currentMessage;
  @override
  final File? currentFile;
  @override
  final bool showErrorMessages;
  @override
  final bool isSaving;
  @override
  final bool isEditing;
  @override
  final bool canUpdate;
  @override
  final Option<Either<MessageFailure, Unit>> successOrFailure;

  @override
  String toString() {
    return 'CreateMessagesState(data: $data, currentMessage: $currentMessage, currentFile: $currentFile, showErrorMessages: $showErrorMessages, isSaving: $isSaving, isEditing: $isEditing, canUpdate: $canUpdate, successOrFailure: $successOrFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateMessagesState &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality()
                .equals(other.currentMessage, currentMessage) &&
            const DeepCollectionEquality()
                .equals(other.currentFile, currentFile) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality().equals(other.canUpdate, canUpdate) &&
            const DeepCollectionEquality()
                .equals(other.successOrFailure, successOrFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(currentMessage),
      const DeepCollectionEquality().hash(currentFile),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(canUpdate),
      const DeepCollectionEquality().hash(successOrFailure));

  @JsonKey(ignore: true)
  @override
  _$$_CreateMessagesStateCopyWith<_$_CreateMessagesState> get copyWith =>
      __$$_CreateMessagesStateCopyWithImpl<_$_CreateMessagesState>(
          this, _$identity);
}

abstract class _CreateMessagesState implements CreateMessagesState {
  const factory _CreateMessagesState(
      {required final ChatRoom data,
      required final String currentMessage,
      required final File? currentFile,
      required final bool showErrorMessages,
      required final bool isSaving,
      required final bool isEditing,
      required final bool canUpdate,
      required final Option<Either<MessageFailure, Unit>>
          successOrFailure}) = _$_CreateMessagesState;

  @override
  ChatRoom get data => throw _privateConstructorUsedError;
  @override
  String get currentMessage => throw _privateConstructorUsedError;
  @override
  File? get currentFile => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  bool get canUpdate => throw _privateConstructorUsedError;
  @override
  Option<Either<MessageFailure, Unit>> get successOrFailure =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CreateMessagesStateCopyWith<_$_CreateMessagesState> get copyWith =>
      throw _privateConstructorUsedError;
}
