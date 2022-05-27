// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDataDto _$UserDataDtoFromJson(Map<String, dynamic> json) {
  return _UserDataDto.fromJson(json);
}

/// @nodoc
mixin _$UserDataDto {
  String get imageUrl => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataDtoCopyWith<UserDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataDtoCopyWith<$Res> {
  factory $UserDataDtoCopyWith(
          UserDataDto value, $Res Function(UserDataDto) then) =
      _$UserDataDtoCopyWithImpl<$Res>;
  $Res call({String imageUrl, String username, String userId});
}

/// @nodoc
class _$UserDataDtoCopyWithImpl<$Res> implements $UserDataDtoCopyWith<$Res> {
  _$UserDataDtoCopyWithImpl(this._value, this._then);

  final UserDataDto _value;
  // ignore: unused_field
  final $Res Function(UserDataDto) _then;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? username = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserDataDtoCopyWith<$Res>
    implements $UserDataDtoCopyWith<$Res> {
  factory _$$_UserDataDtoCopyWith(
          _$_UserDataDto value, $Res Function(_$_UserDataDto) then) =
      __$$_UserDataDtoCopyWithImpl<$Res>;
  @override
  $Res call({String imageUrl, String username, String userId});
}

/// @nodoc
class __$$_UserDataDtoCopyWithImpl<$Res> extends _$UserDataDtoCopyWithImpl<$Res>
    implements _$$_UserDataDtoCopyWith<$Res> {
  __$$_UserDataDtoCopyWithImpl(
      _$_UserDataDto _value, $Res Function(_$_UserDataDto) _then)
      : super(_value, (v) => _then(v as _$_UserDataDto));

  @override
  _$_UserDataDto get _value => super._value as _$_UserDataDto;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? username = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$_UserDataDto(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDataDto extends _UserDataDto {
  const _$_UserDataDto(
      {required this.imageUrl, required this.username, required this.userId})
      : super._();

  factory _$_UserDataDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserDataDtoFromJson(json);

  @override
  final String imageUrl;
  @override
  final String username;
  @override
  final String userId;

  @override
  String toString() {
    return 'UserDataDto(imageUrl: $imageUrl, username: $username, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDataDto &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$$_UserDataDtoCopyWith<_$_UserDataDto> get copyWith =>
      __$$_UserDataDtoCopyWithImpl<_$_UserDataDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDataDtoToJson(this);
  }
}

abstract class _UserDataDto extends UserDataDto {
  const factory _UserDataDto(
      {required final String imageUrl,
      required final String username,
      required final String userId}) = _$_UserDataDto;
  const _UserDataDto._() : super._();

  factory _UserDataDto.fromJson(Map<String, dynamic> json) =
      _$_UserDataDto.fromJson;

  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserDataDtoCopyWith<_$_UserDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}
