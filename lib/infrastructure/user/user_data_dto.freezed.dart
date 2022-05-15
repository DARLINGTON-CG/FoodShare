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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDataDto _$UserDataDtoFromJson(Map<String, dynamic> json) {
  return _UserDataDto.fromJson(json);
}

/// @nodoc
class _$UserDataDtoTearOff {
  const _$UserDataDtoTearOff();

  _UserDataDto call({required String imageUrl, required String username}) {
    return _UserDataDto(
      imageUrl: imageUrl,
      username: username,
    );
  }

  UserDataDto fromJson(Map<String, Object?> json) {
    return UserDataDto.fromJson(json);
  }
}

/// @nodoc
const $UserDataDto = _$UserDataDtoTearOff();

/// @nodoc
mixin _$UserDataDto {
  String get imageUrl => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

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
  $Res call({String imageUrl, String username});
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
    ));
  }
}

/// @nodoc
abstract class _$UserDataDtoCopyWith<$Res>
    implements $UserDataDtoCopyWith<$Res> {
  factory _$UserDataDtoCopyWith(
          _UserDataDto value, $Res Function(_UserDataDto) then) =
      __$UserDataDtoCopyWithImpl<$Res>;
  @override
  $Res call({String imageUrl, String username});
}

/// @nodoc
class __$UserDataDtoCopyWithImpl<$Res> extends _$UserDataDtoCopyWithImpl<$Res>
    implements _$UserDataDtoCopyWith<$Res> {
  __$UserDataDtoCopyWithImpl(
      _UserDataDto _value, $Res Function(_UserDataDto) _then)
      : super(_value, (v) => _then(v as _UserDataDto));

  @override
  _UserDataDto get _value => super._value as _UserDataDto;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? username = freezed,
  }) {
    return _then(_UserDataDto(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDataDto extends _UserDataDto {
  const _$_UserDataDto({required this.imageUrl, required this.username})
      : super._();

  factory _$_UserDataDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserDataDtoFromJson(json);

  @override
  final String imageUrl;
  @override
  final String username;

  @override
  String toString() {
    return 'UserDataDto(imageUrl: $imageUrl, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDataDto &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$UserDataDtoCopyWith<_UserDataDto> get copyWith =>
      __$UserDataDtoCopyWithImpl<_UserDataDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDataDtoToJson(this);
  }
}

abstract class _UserDataDto extends UserDataDto {
  const factory _UserDataDto(
      {required String imageUrl, required String username}) = _$_UserDataDto;
  const _UserDataDto._() : super._();

  factory _UserDataDto.fromJson(Map<String, dynamic> json) =
      _$_UserDataDto.fromJson;

  @override
  String get imageUrl;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$UserDataDtoCopyWith<_UserDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}
