// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_data_read_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserDataReadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(UserData userData) loadSuccess,
    required TResult Function(UserDataFailure loadFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(UserData userData)? loadSuccess,
    TResult Function(UserDataFailure loadFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(UserData userData)? loadSuccess,
    TResult Function(UserDataFailure loadFailure)? loadFailure,
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
abstract class $UserDataReadStateCopyWith<$Res> {
  factory $UserDataReadStateCopyWith(
          UserDataReadState value, $Res Function(UserDataReadState) then) =
      _$UserDataReadStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserDataReadStateCopyWithImpl<$Res>
    implements $UserDataReadStateCopyWith<$Res> {
  _$UserDataReadStateCopyWithImpl(this._value, this._then);

  final UserDataReadState _value;
  // ignore: unused_field
  final $Res Function(UserDataReadState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$UserDataReadStateCopyWithImpl<$Res>
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
    return 'UserDataReadState.initial()';
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
    required TResult Function(UserData userData) loadSuccess,
    required TResult Function(UserDataFailure loadFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(UserData userData)? loadSuccess,
    TResult Function(UserDataFailure loadFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(UserData userData)? loadSuccess,
    TResult Function(UserDataFailure loadFailure)? loadFailure,
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

abstract class _Initial implements UserDataReadState {
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
    extends _$UserDataReadStateCopyWithImpl<$Res>
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
    return 'UserDataReadState.loadingProgress()';
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
    required TResult Function(UserData userData) loadSuccess,
    required TResult Function(UserDataFailure loadFailure) loadFailure,
  }) {
    return loadingProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(UserData userData)? loadSuccess,
    TResult Function(UserDataFailure loadFailure)? loadFailure,
  }) {
    return loadingProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(UserData userData)? loadSuccess,
    TResult Function(UserDataFailure loadFailure)? loadFailure,
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

abstract class _LoadingProgress implements UserDataReadState {
  const factory _LoadingProgress() = _$_LoadingProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  $Res call({UserData userData});

  $UserDataCopyWith<$Res> get userData;
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$UserDataReadStateCopyWithImpl<$Res>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _$_LoadSuccess));

  @override
  _$_LoadSuccess get _value => super._value as _$_LoadSuccess;

  @override
  $Res call({
    Object? userData = freezed,
  }) {
    return _then(_$_LoadSuccess(
      userData == freezed
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
    ));
  }

  @override
  $UserDataCopyWith<$Res> get userData {
    return $UserDataCopyWith<$Res>(_value.userData, (value) {
      return _then(_value.copyWith(userData: value));
    });
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.userData);

  @override
  final UserData userData;

  @override
  String toString() {
    return 'UserDataReadState.loadSuccess(userData: $userData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality().equals(other.userData, userData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userData));

  @JsonKey(ignore: true)
  @override
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(UserData userData) loadSuccess,
    required TResult Function(UserDataFailure loadFailure) loadFailure,
  }) {
    return loadSuccess(userData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(UserData userData)? loadSuccess,
    TResult Function(UserDataFailure loadFailure)? loadFailure,
  }) {
    return loadSuccess?.call(userData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(UserData userData)? loadSuccess,
    TResult Function(UserDataFailure loadFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(userData);
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

abstract class _LoadSuccess implements UserDataReadState {
  const factory _LoadSuccess(final UserData userData) = _$_LoadSuccess;

  UserData get userData => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  $Res call({UserDataFailure loadFailure});

  $UserDataFailureCopyWith<$Res> get loadFailure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$UserDataReadStateCopyWithImpl<$Res>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, (v) => _then(v as _$_LoadFailure));

  @override
  _$_LoadFailure get _value => super._value as _$_LoadFailure;

  @override
  $Res call({
    Object? loadFailure = freezed,
  }) {
    return _then(_$_LoadFailure(
      loadFailure == freezed
          ? _value.loadFailure
          : loadFailure // ignore: cast_nullable_to_non_nullable
              as UserDataFailure,
    ));
  }

  @override
  $UserDataFailureCopyWith<$Res> get loadFailure {
    return $UserDataFailureCopyWith<$Res>(_value.loadFailure, (value) {
      return _then(_value.copyWith(loadFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.loadFailure);

  @override
  final UserDataFailure loadFailure;

  @override
  String toString() {
    return 'UserDataReadState.loadFailure(loadFailure: $loadFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            const DeepCollectionEquality()
                .equals(other.loadFailure, loadFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(loadFailure));

  @JsonKey(ignore: true)
  @override
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingProgress,
    required TResult Function(UserData userData) loadSuccess,
    required TResult Function(UserDataFailure loadFailure) loadFailure,
  }) {
    return loadFailure(this.loadFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(UserData userData)? loadSuccess,
    TResult Function(UserDataFailure loadFailure)? loadFailure,
  }) {
    return loadFailure?.call(this.loadFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingProgress,
    TResult Function(UserData userData)? loadSuccess,
    TResult Function(UserDataFailure loadFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this.loadFailure);
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

abstract class _LoadFailure implements UserDataReadState {
  const factory _LoadFailure(final UserDataFailure loadFailure) =
      _$_LoadFailure;

  UserDataFailure get loadFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserDataReadEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? readUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadUserData value) readUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadUserData value)? readUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadUserData value)? readUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataReadEventsCopyWith<$Res> {
  factory $UserDataReadEventsCopyWith(
          UserDataReadEvents value, $Res Function(UserDataReadEvents) then) =
      _$UserDataReadEventsCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserDataReadEventsCopyWithImpl<$Res>
    implements $UserDataReadEventsCopyWith<$Res> {
  _$UserDataReadEventsCopyWithImpl(this._value, this._then);

  final UserDataReadEvents _value;
  // ignore: unused_field
  final $Res Function(UserDataReadEvents) _then;
}

/// @nodoc
abstract class _$$ReadUserDataCopyWith<$Res> {
  factory _$$ReadUserDataCopyWith(
          _$ReadUserData value, $Res Function(_$ReadUserData) then) =
      __$$ReadUserDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReadUserDataCopyWithImpl<$Res>
    extends _$UserDataReadEventsCopyWithImpl<$Res>
    implements _$$ReadUserDataCopyWith<$Res> {
  __$$ReadUserDataCopyWithImpl(
      _$ReadUserData _value, $Res Function(_$ReadUserData) _then)
      : super(_value, (v) => _then(v as _$ReadUserData));

  @override
  _$ReadUserData get _value => super._value as _$ReadUserData;
}

/// @nodoc

class _$ReadUserData implements ReadUserData {
  const _$ReadUserData();

  @override
  String toString() {
    return 'UserDataReadEvents.readUserData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReadUserData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readUserData,
  }) {
    return readUserData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? readUserData,
  }) {
    return readUserData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readUserData,
    required TResult orElse(),
  }) {
    if (readUserData != null) {
      return readUserData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadUserData value) readUserData,
  }) {
    return readUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadUserData value)? readUserData,
  }) {
    return readUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadUserData value)? readUserData,
    required TResult orElse(),
  }) {
    if (readUserData != null) {
      return readUserData(this);
    }
    return orElse();
  }
}

abstract class ReadUserData implements UserDataReadEvents {
  const factory ReadUserData() = _$ReadUserData;
}
