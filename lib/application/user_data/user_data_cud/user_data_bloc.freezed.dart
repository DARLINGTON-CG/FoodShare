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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$InitializedCopyWith<$Res> {
  factory _$$InitializedCopyWith(
          _$Initialized value, $Res Function(_$Initialized) then) =
      __$$InitializedCopyWithImpl<$Res>;
  $Res call({Option<UserData> initialUserData});
}

/// @nodoc
class __$$InitializedCopyWithImpl<$Res>
    extends _$UserDataEventsCopyWithImpl<$Res>
    implements _$$InitializedCopyWith<$Res> {
  __$$InitializedCopyWithImpl(
      _$Initialized _value, $Res Function(_$Initialized) _then)
      : super(_value, (v) => _then(v as _$Initialized));

  @override
  _$Initialized get _value => super._value as _$Initialized;

  @override
  $Res call({
    Object? initialUserData = freezed,
  }) {
    return _then(_$Initialized(
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
            other is _$Initialized &&
            const DeepCollectionEquality()
                .equals(other.initialUserData, initialUserData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(initialUserData));

  @JsonKey(ignore: true)
  @override
  _$$InitializedCopyWith<_$Initialized> get copyWith =>
      __$$InitializedCopyWithImpl<_$Initialized>(this, _$identity);

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
  const factory Initialized(final Option<UserData> initialUserData) =
      _$Initialized;

  Option<UserData> get initialUserData => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$InitializedCopyWith<_$Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsernameChangedCopyWith<$Res> {
  factory _$$UsernameChangedCopyWith(
          _$UsernameChanged value, $Res Function(_$UsernameChanged) then) =
      __$$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class __$$UsernameChangedCopyWithImpl<$Res>
    extends _$UserDataEventsCopyWithImpl<$Res>
    implements _$$UsernameChangedCopyWith<$Res> {
  __$$UsernameChangedCopyWithImpl(
      _$UsernameChanged _value, $Res Function(_$UsernameChanged) _then)
      : super(_value, (v) => _then(v as _$UsernameChanged));

  @override
  _$UsernameChanged get _value => super._value as _$UsernameChanged;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_$UsernameChanged(
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
            other is _$UsernameChanged &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$UsernameChangedCopyWith<_$UsernameChanged> get copyWith =>
      __$$UsernameChangedCopyWithImpl<_$UsernameChanged>(this, _$identity);

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
  const factory UsernameChanged(final String username) = _$UsernameChanged;

  String get username => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UsernameChangedCopyWith<_$UsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedCopyWith<$Res> {
  factory _$$SavedCopyWith(_$Saved value, $Res Function(_$Saved) then) =
      __$$SavedCopyWithImpl<$Res>;
  $Res call({File? image});
}

/// @nodoc
class __$$SavedCopyWithImpl<$Res> extends _$UserDataEventsCopyWithImpl<$Res>
    implements _$$SavedCopyWith<$Res> {
  __$$SavedCopyWithImpl(_$Saved _value, $Res Function(_$Saved) _then)
      : super(_value, (v) => _then(v as _$Saved));

  @override
  _$Saved get _value => super._value as _$Saved;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$Saved(
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
            other is _$Saved &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$SavedCopyWith<_$Saved> get copyWith =>
      __$$SavedCopyWithImpl<_$Saved>(this, _$identity);

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
  const factory Saved(final File? image) = _$Saved;

  File? get image => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SavedCopyWith<_$Saved> get copyWith => throw _privateConstructorUsedError;
}

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
abstract class _$$_UserDataStateCopyWith<$Res>
    implements $UserDataStateCopyWith<$Res> {
  factory _$$_UserDataStateCopyWith(
          _$_UserDataState value, $Res Function(_$_UserDataState) then) =
      __$$_UserDataStateCopyWithImpl<$Res>;
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
class __$$_UserDataStateCopyWithImpl<$Res>
    extends _$UserDataStateCopyWithImpl<$Res>
    implements _$$_UserDataStateCopyWith<$Res> {
  __$$_UserDataStateCopyWithImpl(
      _$_UserDataState _value, $Res Function(_$_UserDataState) _then)
      : super(_value, (v) => _then(v as _$_UserDataState));

  @override
  _$_UserDataState get _value => super._value as _$_UserDataState;

  @override
  $Res call({
    Object? data = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? isEditing = freezed,
    Object? successOrFailure = freezed,
  }) {
    return _then(_$_UserDataState(
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
            other is _$_UserDataState &&
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
  _$$_UserDataStateCopyWith<_$_UserDataState> get copyWith =>
      __$$_UserDataStateCopyWithImpl<_$_UserDataState>(this, _$identity);
}

abstract class _UserDataState implements UserDataState {
  const factory _UserDataState(
      {required final UserData data,
      required final bool showErrorMessages,
      required final bool isSaving,
      required final bool isEditing,
      required final Option<Either<UserDataFailure, Unit>>
          successOrFailure}) = _$_UserDataState;

  @override
  UserData get data => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  Option<Either<UserDataFailure, Unit>> get successOrFailure =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserDataStateCopyWith<_$_UserDataState> get copyWith =>
      throw _privateConstructorUsedError;
}
