// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_data_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserDataFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() notAvailable,
    required TResult Function() usernameUnavailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? notAvailable,
    TResult Function()? usernameUnavailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? notAvailable,
    TResult Function()? usernameUnavailable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(_NotAvailable value) notAvailable,
    required TResult Function(_UsernameNotAvailable value) usernameUnavailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_NotAvailable value)? notAvailable,
    TResult Function(_UsernameNotAvailable value)? usernameUnavailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_NotAvailable value)? notAvailable,
    TResult Function(_UsernameNotAvailable value)? usernameUnavailable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataFailureCopyWith<$Res> {
  factory $UserDataFailureCopyWith(
          UserDataFailure value, $Res Function(UserDataFailure) then) =
      _$UserDataFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserDataFailureCopyWithImpl<$Res>
    implements $UserDataFailureCopyWith<$Res> {
  _$UserDataFailureCopyWithImpl(this._value, this._then);

  final UserDataFailure _value;
  // ignore: unused_field
  final $Res Function(UserDataFailure) _then;
}

/// @nodoc
abstract class _$$_UnexpectedCopyWith<$Res> {
  factory _$$_UnexpectedCopyWith(
          _$_Unexpected value, $Res Function(_$_Unexpected) then) =
      __$$_UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnexpectedCopyWithImpl<$Res>
    extends _$UserDataFailureCopyWithImpl<$Res>
    implements _$$_UnexpectedCopyWith<$Res> {
  __$$_UnexpectedCopyWithImpl(
      _$_Unexpected _value, $Res Function(_$_Unexpected) _then)
      : super(_value, (v) => _then(v as _$_Unexpected));

  @override
  _$_Unexpected get _value => super._value as _$_Unexpected;
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected();

  @override
  String toString() {
    return 'UserDataFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() notAvailable,
    required TResult Function() usernameUnavailable,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? notAvailable,
    TResult Function()? usernameUnavailable,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? notAvailable,
    TResult Function()? usernameUnavailable,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(_NotAvailable value) notAvailable,
    required TResult Function(_UsernameNotAvailable value) usernameUnavailable,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_NotAvailable value)? notAvailable,
    TResult Function(_UsernameNotAvailable value)? usernameUnavailable,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_NotAvailable value)? notAvailable,
    TResult Function(_UsernameNotAvailable value)? usernameUnavailable,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements UserDataFailure {
  const factory _Unexpected() = _$_Unexpected;
}

/// @nodoc
abstract class _$$_InsufficientPermissionsCopyWith<$Res> {
  factory _$$_InsufficientPermissionsCopyWith(_$_InsufficientPermissions value,
          $Res Function(_$_InsufficientPermissions) then) =
      __$$_InsufficientPermissionsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InsufficientPermissionsCopyWithImpl<$Res>
    extends _$UserDataFailureCopyWithImpl<$Res>
    implements _$$_InsufficientPermissionsCopyWith<$Res> {
  __$$_InsufficientPermissionsCopyWithImpl(_$_InsufficientPermissions _value,
      $Res Function(_$_InsufficientPermissions) _then)
      : super(_value, (v) => _then(v as _$_InsufficientPermissions));

  @override
  _$_InsufficientPermissions get _value =>
      super._value as _$_InsufficientPermissions;
}

/// @nodoc

class _$_InsufficientPermissions implements _InsufficientPermissions {
  const _$_InsufficientPermissions();

  @override
  String toString() {
    return 'UserDataFailure.insufficientPermissions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InsufficientPermissions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() notAvailable,
    required TResult Function() usernameUnavailable,
  }) {
    return insufficientPermissions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? notAvailable,
    TResult Function()? usernameUnavailable,
  }) {
    return insufficientPermissions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? notAvailable,
    TResult Function()? usernameUnavailable,
    required TResult orElse(),
  }) {
    if (insufficientPermissions != null) {
      return insufficientPermissions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(_NotAvailable value) notAvailable,
    required TResult Function(_UsernameNotAvailable value) usernameUnavailable,
  }) {
    return insufficientPermissions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_NotAvailable value)? notAvailable,
    TResult Function(_UsernameNotAvailable value)? usernameUnavailable,
  }) {
    return insufficientPermissions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_NotAvailable value)? notAvailable,
    TResult Function(_UsernameNotAvailable value)? usernameUnavailable,
    required TResult orElse(),
  }) {
    if (insufficientPermissions != null) {
      return insufficientPermissions(this);
    }
    return orElse();
  }
}

abstract class _InsufficientPermissions implements UserDataFailure {
  const factory _InsufficientPermissions() = _$_InsufficientPermissions;
}

/// @nodoc
abstract class _$$_NotAvailableCopyWith<$Res> {
  factory _$$_NotAvailableCopyWith(
          _$_NotAvailable value, $Res Function(_$_NotAvailable) then) =
      __$$_NotAvailableCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NotAvailableCopyWithImpl<$Res>
    extends _$UserDataFailureCopyWithImpl<$Res>
    implements _$$_NotAvailableCopyWith<$Res> {
  __$$_NotAvailableCopyWithImpl(
      _$_NotAvailable _value, $Res Function(_$_NotAvailable) _then)
      : super(_value, (v) => _then(v as _$_NotAvailable));

  @override
  _$_NotAvailable get _value => super._value as _$_NotAvailable;
}

/// @nodoc

class _$_NotAvailable implements _NotAvailable {
  const _$_NotAvailable();

  @override
  String toString() {
    return 'UserDataFailure.notAvailable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NotAvailable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() notAvailable,
    required TResult Function() usernameUnavailable,
  }) {
    return notAvailable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? notAvailable,
    TResult Function()? usernameUnavailable,
  }) {
    return notAvailable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? notAvailable,
    TResult Function()? usernameUnavailable,
    required TResult orElse(),
  }) {
    if (notAvailable != null) {
      return notAvailable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(_NotAvailable value) notAvailable,
    required TResult Function(_UsernameNotAvailable value) usernameUnavailable,
  }) {
    return notAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_NotAvailable value)? notAvailable,
    TResult Function(_UsernameNotAvailable value)? usernameUnavailable,
  }) {
    return notAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_NotAvailable value)? notAvailable,
    TResult Function(_UsernameNotAvailable value)? usernameUnavailable,
    required TResult orElse(),
  }) {
    if (notAvailable != null) {
      return notAvailable(this);
    }
    return orElse();
  }
}

abstract class _NotAvailable implements UserDataFailure {
  const factory _NotAvailable() = _$_NotAvailable;
}

/// @nodoc
abstract class _$$_UsernameNotAvailableCopyWith<$Res> {
  factory _$$_UsernameNotAvailableCopyWith(_$_UsernameNotAvailable value,
          $Res Function(_$_UsernameNotAvailable) then) =
      __$$_UsernameNotAvailableCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UsernameNotAvailableCopyWithImpl<$Res>
    extends _$UserDataFailureCopyWithImpl<$Res>
    implements _$$_UsernameNotAvailableCopyWith<$Res> {
  __$$_UsernameNotAvailableCopyWithImpl(_$_UsernameNotAvailable _value,
      $Res Function(_$_UsernameNotAvailable) _then)
      : super(_value, (v) => _then(v as _$_UsernameNotAvailable));

  @override
  _$_UsernameNotAvailable get _value => super._value as _$_UsernameNotAvailable;
}

/// @nodoc

class _$_UsernameNotAvailable implements _UsernameNotAvailable {
  const _$_UsernameNotAvailable();

  @override
  String toString() {
    return 'UserDataFailure.usernameUnavailable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UsernameNotAvailable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() notAvailable,
    required TResult Function() usernameUnavailable,
  }) {
    return usernameUnavailable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? notAvailable,
    TResult Function()? usernameUnavailable,
  }) {
    return usernameUnavailable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? notAvailable,
    TResult Function()? usernameUnavailable,
    required TResult orElse(),
  }) {
    if (usernameUnavailable != null) {
      return usernameUnavailable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(_NotAvailable value) notAvailable,
    required TResult Function(_UsernameNotAvailable value) usernameUnavailable,
  }) {
    return usernameUnavailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_NotAvailable value)? notAvailable,
    TResult Function(_UsernameNotAvailable value)? usernameUnavailable,
  }) {
    return usernameUnavailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_NotAvailable value)? notAvailable,
    TResult Function(_UsernameNotAvailable value)? usernameUnavailable,
    required TResult orElse(),
  }) {
    if (usernameUnavailable != null) {
      return usernameUnavailable(this);
    }
    return orElse();
  }
}

abstract class _UsernameNotAvailable implements UserDataFailure {
  const factory _UsernameNotAvailable() = _$_UsernameNotAvailable;
}
