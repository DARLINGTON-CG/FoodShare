// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserDataEventsTearOff {
  const _$UserDataEventsTearOff();

  Initialized initialized(Option<UserData> initialUserData) {
    return Initialized(
      initialUserData,
    );
  }

  UsernameChanged usernameChanged(String username) {
    return UsernameChanged(
      username,
    );
  }

  Saved saved(File? image) {
    return Saved(
      image,
    );
  }
}

/// @nodoc
const $UserDataEvents = _$UserDataEventsTearOff();

/// @nodoc
mixin _$UserDataEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<UserData> initialUserData) initialized,
    required TResult Function(String username) usernameChanged,
    required TResult Function(File? image) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<UserData> initialUserData)? initialized,
    TResult Function(String username)? usernameChanged,
    TResult Function(File? image)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<UserData> initialUserData)? initialized,
    TResult Function(String username)? usernameChanged,
    TResult Function(File? image)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataEventsCopyWith<$Res> {
  factory $UserDataEventsCopyWith(
          UserDataEvents value, $Res Function(UserDataEvents) then) =
      _$UserDataEventsCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserDataEventsCopyWithImpl<$Res>
    implements $UserDataEventsCopyWith<$Res> {
  _$UserDataEventsCopyWithImpl(this._value, this._then);

  final UserDataEvents _value;
  // ignore: unused_field
  final $Res Function(UserDataEvents) _then;
}

/// @nodoc
abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
  $Res call({Option<UserData> initialUserData});
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res> extends _$UserDataEventsCopyWithImpl<$Res>
    implements $InitializedCopyWith<$Res> {
  _$InitializedCopyWithImpl(
      Initialized _value, $Res Function(Initialized) _then)
      : super(_value, (v) => _then(v as Initialized));

  @override
  Initialized get _value => super._value as Initialized;

  @override
  $Res call({
    Object? initialUserData = freezed,
  }) {
    return _then(Initialized(
      initialUserData == freezed
          ? _value.initialUserData
          : initialUserData // ignore: cast_nullable_to_non_nullable
              as Option<UserData>,
    ));
  }
}

/// @nodoc

class _$Initialized implements Initialized {
  const _$Initialized(this.initialUserData);

  @override
  final Option<UserData> initialUserData;

  @override
  String toString() {
    return 'UserDataEvents.initialized(initialUserData: $initialUserData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Initialized &&
            const DeepCollectionEquality()
                .equals(other.initialUserData, initialUserData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(initialUserData));

  @JsonKey(ignore: true)
  @override
  $InitializedCopyWith<Initialized> get copyWith =>
      _$InitializedCopyWithImpl<Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<UserData> initialUserData) initialized,
    required TResult Function(String username) usernameChanged,
    required TResult Function(File? image) saved,
  }) {
    return initialized(initialUserData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<UserData> initialUserData)? initialized,
    TResult Function(String username)? usernameChanged,
    TResult Function(File? image)? saved,
  }) {
    return initialized?.call(initialUserData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<UserData> initialUserData)? initialized,
    TResult Function(String username)? usernameChanged,
    TResult Function(File? image)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialUserData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements UserDataEvents {
  const factory Initialized(Option<UserData> initialUserData) = _$Initialized;

  Option<UserData> get initialUserData;
  @JsonKey(ignore: true)
  $InitializedCopyWith<Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsernameChangedCopyWith<$Res> {
  factory $UsernameChangedCopyWith(
          UsernameChanged value, $Res Function(UsernameChanged) then) =
      _$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class _$UsernameChangedCopyWithImpl<$Res>
    extends _$UserDataEventsCopyWithImpl<$Res>
    implements $UsernameChangedCopyWith<$Res> {
  _$UsernameChangedCopyWithImpl(
      UsernameChanged _value, $Res Function(UsernameChanged) _then)
      : super(_value, (v) => _then(v as UsernameChanged));

  @override
  UsernameChanged get _value => super._value as UsernameChanged;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(UsernameChanged(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UsernameChanged implements UsernameChanged {
  const _$UsernameChanged(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'UserDataEvents.usernameChanged(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UsernameChanged &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  $UsernameChangedCopyWith<UsernameChanged> get copyWith =>
      _$UsernameChangedCopyWithImpl<UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<UserData> initialUserData) initialized,
    required TResult Function(String username) usernameChanged,
    required TResult Function(File? image) saved,
  }) {
    return usernameChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<UserData> initialUserData)? initialized,
    TResult Function(String username)? usernameChanged,
    TResult Function(File? image)? saved,
  }) {
    return usernameChanged?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<UserData> initialUserData)? initialized,
    TResult Function(String username)? usernameChanged,
    TResult Function(File? image)? saved,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(Saved value) saved,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(Saved value)? saved,
  }) {
    return usernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements UserDataEvents {
  const factory UsernameChanged(String username) = _$UsernameChanged;

  String get username;
  @JsonKey(ignore: true)
  $UsernameChangedCopyWith<UsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedCopyWith<$Res> {
  factory $SavedCopyWith(Saved value, $Res Function(Saved) then) =
      _$SavedCopyWithImpl<$Res>;
  $Res call({File? image});
}

/// @nodoc
class _$SavedCopyWithImpl<$Res> extends _$UserDataEventsCopyWithImpl<$Res>
    implements $SavedCopyWith<$Res> {
  _$SavedCopyWithImpl(Saved _value, $Res Function(Saved) _then)
      : super(_value, (v) => _then(v as Saved));

  @override
  Saved get _value => super._value as Saved;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(Saved(
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$Saved implements Saved {
  const _$Saved(this.image);

  @override
  final File? image;

  @override
  String toString() {
    return 'UserDataEvents.saved(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Saved &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  $SavedCopyWith<Saved> get copyWith =>
      _$SavedCopyWithImpl<Saved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<UserData> initialUserData) initialized,
    required TResult Function(String username) usernameChanged,
    required TResult Function(File? image) saved,
  }) {
    return saved(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<UserData> initialUserData)? initialized,
    TResult Function(String username)? usernameChanged,
    TResult Function(File? image)? saved,
  }) {
    return saved?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<UserData> initialUserData)? initialized,
    TResult Function(String username)? usernameChanged,
    TResult Function(File? image)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class Saved implements UserDataEvents {
  const factory Saved(File? image) = _$Saved;

  File? get image;
  @JsonKey(ignore: true)
  $SavedCopyWith<Saved> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserDataStateTearOff {
  const _$UserDataStateTearOff();

  _UserDataState call(
      {required UserData data,
      required bool showErrorMessages,
      required bool isSaving,
      required bool isEditing,
      required Option<Either<UserDataFailure, Unit>> successOrFailure}) {
    return _UserDataState(
      data: data,
      showErrorMessages: showErrorMessages,
      isSaving: isSaving,
      isEditing: isEditing,
      successOrFailure: successOrFailure,
    );
  }
}

/// @nodoc
const $UserDataState = _$UserDataStateTearOff();

/// @nodoc
mixin _$UserDataState {
  UserData get data => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  Option<Either<UserDataFailure, Unit>> get successOrFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDataStateCopyWith<UserDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataStateCopyWith<$Res> {
  factory $UserDataStateCopyWith(
          UserDataState value, $Res Function(UserDataState) then) =
      _$UserDataStateCopyWithImpl<$Res>;
  $Res call(
      {UserData data,
      bool showErrorMessages,
      bool isSaving,
      bool isEditing,
      Option<Either<UserDataFailure, Unit>> successOrFailure});

  $UserDataCopyWith<$Res> get data;
}

/// @nodoc
class _$UserDataStateCopyWithImpl<$Res>
    implements $UserDataStateCopyWith<$Res> {
  _$UserDataStateCopyWithImpl(this._value, this._then);

  final UserDataState _value;
  // ignore: unused_field
  final $Res Function(UserDataState) _then;

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
              as UserData,
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
              as Option<Either<UserDataFailure, Unit>>,
    ));
  }

  @override
  $UserDataCopyWith<$Res> get data {
    return $UserDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$UserDataStateCopyWith<$Res>
    implements $UserDataStateCopyWith<$Res> {
  factory _$UserDataStateCopyWith(
          _UserDataState value, $Res Function(_UserDataState) then) =
      __$UserDataStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserData data,
      bool showErrorMessages,
      bool isSaving,
      bool isEditing,
      Option<Either<UserDataFailure, Unit>> successOrFailure});

  @override
  $UserDataCopyWith<$Res> get data;
}

/// @nodoc
class __$UserDataStateCopyWithImpl<$Res>
    extends _$UserDataStateCopyWithImpl<$Res>
    implements _$UserDataStateCopyWith<$Res> {
  __$UserDataStateCopyWithImpl(
      _UserDataState _value, $Res Function(_UserDataState) _then)
      : super(_value, (v) => _then(v as _UserDataState));

  @override
  _UserDataState get _value => super._value as _UserDataState;

  @override
  $Res call({
    Object? data = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? isEditing = freezed,
    Object? successOrFailure = freezed,
  }) {
    return _then(_UserDataState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserData,
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
              as Option<Either<UserDataFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_UserDataState implements _UserDataState {
  const _$_UserDataState(
      {required this.data,
      required this.showErrorMessages,
      required this.isSaving,
      required this.isEditing,
      required this.successOrFailure});

  @override
  final UserData data;
  @override
  final bool showErrorMessages;
  @override
  final bool isSaving;
  @override
  final bool isEditing;
  @override
  final Option<Either<UserDataFailure, Unit>> successOrFailure;

  @override
  String toString() {
    return 'UserDataState(data: $data, showErrorMessages: $showErrorMessages, isSaving: $isSaving, isEditing: $isEditing, successOrFailure: $successOrFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDataState &&
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
  _$UserDataStateCopyWith<_UserDataState> get copyWith =>
      __$UserDataStateCopyWithImpl<_UserDataState>(this, _$identity);
}

abstract class _UserDataState implements UserDataState {
  const factory _UserDataState(
          {required UserData data,
          required bool showErrorMessages,
          required bool isSaving,
          required bool isEditing,
          required Option<Either<UserDataFailure, Unit>> successOrFailure}) =
      _$_UserDataState;

  @override
  UserData get data;
  @override
  bool get showErrorMessages;
  @override
  bool get isSaving;
  @override
  bool get isEditing;
  @override
  Option<Either<UserDataFailure, Unit>> get successOrFailure;
  @override
  @JsonKey(ignore: true)
  _$UserDataStateCopyWith<_UserDataState> get copyWith =>
      throw _privateConstructorUsedError;
}
