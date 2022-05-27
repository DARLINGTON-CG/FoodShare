// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() unableToUpdate,
    required TResult Function() nonExistentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    TResult Function()? nonExistentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    TResult Function()? nonExistentUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_NonExistentUser value) nonExistentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_NonExistentUser value)? nonExistentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_NonExistentUser value)? nonExistentUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostFailureCopyWith<$Res> {
  factory $PostFailureCopyWith(
          PostFailure value, $Res Function(PostFailure) then) =
      _$PostFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostFailureCopyWithImpl<$Res> implements $PostFailureCopyWith<$Res> {
  _$PostFailureCopyWithImpl(this._value, this._then);

  final PostFailure _value;
  // ignore: unused_field
  final $Res Function(PostFailure) _then;
}

/// @nodoc
abstract class _$$_UnexpectedCopyWith<$Res> {
  factory _$$_UnexpectedCopyWith(
          _$_Unexpected value, $Res Function(_$_Unexpected) then) =
      __$$_UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnexpectedCopyWithImpl<$Res> extends _$PostFailureCopyWithImpl<$Res>
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
    return 'PostFailure.unexpected()';
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
    required TResult Function() unableToUpdate,
    required TResult Function() nonExistentUser,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    TResult Function()? nonExistentUser,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    TResult Function()? nonExistentUser,
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
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_NonExistentUser value) nonExistentUser,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_NonExistentUser value)? nonExistentUser,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_NonExistentUser value)? nonExistentUser,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements PostFailure {
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
    extends _$PostFailureCopyWithImpl<$Res>
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
    return 'PostFailure.insufficientPermissions()';
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
    required TResult Function() unableToUpdate,
    required TResult Function() nonExistentUser,
  }) {
    return insufficientPermissions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    TResult Function()? nonExistentUser,
  }) {
    return insufficientPermissions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    TResult Function()? nonExistentUser,
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
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_NonExistentUser value) nonExistentUser,
  }) {
    return insufficientPermissions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_NonExistentUser value)? nonExistentUser,
  }) {
    return insufficientPermissions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_NonExistentUser value)? nonExistentUser,
    required TResult orElse(),
  }) {
    if (insufficientPermissions != null) {
      return insufficientPermissions(this);
    }
    return orElse();
  }
}

abstract class _InsufficientPermissions implements PostFailure {
  const factory _InsufficientPermissions() = _$_InsufficientPermissions;
}

/// @nodoc
abstract class _$$_UnableToUpdateCopyWith<$Res> {
  factory _$$_UnableToUpdateCopyWith(
          _$_UnableToUpdate value, $Res Function(_$_UnableToUpdate) then) =
      __$$_UnableToUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnableToUpdateCopyWithImpl<$Res>
    extends _$PostFailureCopyWithImpl<$Res>
    implements _$$_UnableToUpdateCopyWith<$Res> {
  __$$_UnableToUpdateCopyWithImpl(
      _$_UnableToUpdate _value, $Res Function(_$_UnableToUpdate) _then)
      : super(_value, (v) => _then(v as _$_UnableToUpdate));

  @override
  _$_UnableToUpdate get _value => super._value as _$_UnableToUpdate;
}

/// @nodoc

class _$_UnableToUpdate implements _UnableToUpdate {
  const _$_UnableToUpdate();

  @override
  String toString() {
    return 'PostFailure.unableToUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnableToUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() unableToUpdate,
    required TResult Function() nonExistentUser,
  }) {
    return unableToUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    TResult Function()? nonExistentUser,
  }) {
    return unableToUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    TResult Function()? nonExistentUser,
    required TResult orElse(),
  }) {
    if (unableToUpdate != null) {
      return unableToUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_NonExistentUser value) nonExistentUser,
  }) {
    return unableToUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_NonExistentUser value)? nonExistentUser,
  }) {
    return unableToUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_NonExistentUser value)? nonExistentUser,
    required TResult orElse(),
  }) {
    if (unableToUpdate != null) {
      return unableToUpdate(this);
    }
    return orElse();
  }
}

abstract class _UnableToUpdate implements PostFailure {
  const factory _UnableToUpdate() = _$_UnableToUpdate;
}

/// @nodoc
abstract class _$$_NonExistentUserCopyWith<$Res> {
  factory _$$_NonExistentUserCopyWith(
          _$_NonExistentUser value, $Res Function(_$_NonExistentUser) then) =
      __$$_NonExistentUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NonExistentUserCopyWithImpl<$Res>
    extends _$PostFailureCopyWithImpl<$Res>
    implements _$$_NonExistentUserCopyWith<$Res> {
  __$$_NonExistentUserCopyWithImpl(
      _$_NonExistentUser _value, $Res Function(_$_NonExistentUser) _then)
      : super(_value, (v) => _then(v as _$_NonExistentUser));

  @override
  _$_NonExistentUser get _value => super._value as _$_NonExistentUser;
}

/// @nodoc

class _$_NonExistentUser implements _NonExistentUser {
  const _$_NonExistentUser();

  @override
  String toString() {
    return 'PostFailure.nonExistentUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NonExistentUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() insufficientPermissions,
    required TResult Function() unableToUpdate,
    required TResult Function() nonExistentUser,
  }) {
    return nonExistentUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    TResult Function()? nonExistentUser,
  }) {
    return nonExistentUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? insufficientPermissions,
    TResult Function()? unableToUpdate,
    TResult Function()? nonExistentUser,
    required TResult orElse(),
  }) {
    if (nonExistentUser != null) {
      return nonExistentUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InsufficientPermissions value)
        insufficientPermissions,
    required TResult Function(_UnableToUpdate value) unableToUpdate,
    required TResult Function(_NonExistentUser value) nonExistentUser,
  }) {
    return nonExistentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_NonExistentUser value)? nonExistentUser,
  }) {
    return nonExistentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InsufficientPermissions value)? insufficientPermissions,
    TResult Function(_UnableToUpdate value)? unableToUpdate,
    TResult Function(_NonExistentUser value)? nonExistentUser,
    required TResult orElse(),
  }) {
    if (nonExistentUser != null) {
      return nonExistentUser(this);
    }
    return orElse();
  }
}

abstract class _NonExistentUser implements PostFailure {
  const factory _NonExistentUser() = _$_NonExistentUser;
}
