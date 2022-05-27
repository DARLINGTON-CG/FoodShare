// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostDto _$PostDtoFromJson(Map<String, dynamic> json) {
  return _PostDto.fromJson(json);
}

/// @nodoc
mixin _$PostDto {
//@JsonKey(ignore: true) String? id,
  String get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get pickupTime => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get postUserId => throw _privateConstructorUsedError;
  String get postPrice => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostDtoCopyWith<PostDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDtoCopyWith<$Res> {
  factory $PostDtoCopyWith(PostDto value, $Res Function(PostDto) then) =
      _$PostDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String imageUrl,
      String pickupTime,
      String description,
      int quantity,
      String username,
      String title,
      String postUserId,
      String postPrice,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$PostDtoCopyWithImpl<$Res> implements $PostDtoCopyWith<$Res> {
  _$PostDtoCopyWithImpl(this._value, this._then);

  final PostDto _value;
  // ignore: unused_field
  final $Res Function(PostDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? pickupTime = freezed,
    Object? description = freezed,
    Object? quantity = freezed,
    Object? username = freezed,
    Object? title = freezed,
    Object? postUserId = freezed,
    Object? postPrice = freezed,
    Object? serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      pickupTime: pickupTime == freezed
          ? _value.pickupTime
          : pickupTime // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      postUserId: postUserId == freezed
          ? _value.postUserId
          : postUserId // ignore: cast_nullable_to_non_nullable
              as String,
      postPrice: postPrice == freezed
          ? _value.postPrice
          : postPrice // ignore: cast_nullable_to_non_nullable
              as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ));
  }
}

/// @nodoc
abstract class _$$_PostDtoCopyWith<$Res> implements $PostDtoCopyWith<$Res> {
  factory _$$_PostDtoCopyWith(
          _$_PostDto value, $Res Function(_$_PostDto) then) =
      __$$_PostDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String imageUrl,
      String pickupTime,
      String description,
      int quantity,
      String username,
      String title,
      String postUserId,
      String postPrice,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$$_PostDtoCopyWithImpl<$Res> extends _$PostDtoCopyWithImpl<$Res>
    implements _$$_PostDtoCopyWith<$Res> {
  __$$_PostDtoCopyWithImpl(_$_PostDto _value, $Res Function(_$_PostDto) _then)
      : super(_value, (v) => _then(v as _$_PostDto));

  @override
  _$_PostDto get _value => super._value as _$_PostDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? pickupTime = freezed,
    Object? description = freezed,
    Object? quantity = freezed,
    Object? username = freezed,
    Object? title = freezed,
    Object? postUserId = freezed,
    Object? postPrice = freezed,
    Object? serverTimeStamp = freezed,
  }) {
    return _then(_$_PostDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      pickupTime: pickupTime == freezed
          ? _value.pickupTime
          : pickupTime // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      postUserId: postUserId == freezed
          ? _value.postUserId
          : postUserId // ignore: cast_nullable_to_non_nullable
              as String,
      postPrice: postPrice == freezed
          ? _value.postPrice
          : postPrice // ignore: cast_nullable_to_non_nullable
              as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostDto extends _PostDto {
  const _$_PostDto(
      {required this.id,
      required this.imageUrl,
      required this.pickupTime,
      required this.description,
      required this.quantity,
      required this.username,
      required this.title,
      required this.postUserId,
      required this.postPrice,
      @ServerTimestampConverter() required this.serverTimeStamp})
      : super._();

  factory _$_PostDto.fromJson(Map<String, dynamic> json) =>
      _$$_PostDtoFromJson(json);

//@JsonKey(ignore: true) String? id,
  @override
  final String id;
  @override
  final String imageUrl;
  @override
  final String pickupTime;
  @override
  final String description;
  @override
  final int quantity;
  @override
  final String username;
  @override
  final String title;
  @override
  final String postUserId;
  @override
  final String postPrice;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'PostDto(id: $id, imageUrl: $imageUrl, pickupTime: $pickupTime, description: $description, quantity: $quantity, username: $username, title: $title, postUserId: $postUserId, postPrice: $postPrice, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.pickupTime, pickupTime) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.postUserId, postUserId) &&
            const DeepCollectionEquality().equals(other.postPrice, postPrice) &&
            const DeepCollectionEquality()
                .equals(other.serverTimeStamp, serverTimeStamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(pickupTime),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(postUserId),
      const DeepCollectionEquality().hash(postPrice),
      const DeepCollectionEquality().hash(serverTimeStamp));

  @JsonKey(ignore: true)
  @override
  _$$_PostDtoCopyWith<_$_PostDto> get copyWith =>
      __$$_PostDtoCopyWithImpl<_$_PostDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostDtoToJson(this);
  }
}

abstract class _PostDto extends PostDto {
  const factory _PostDto(
      {required final String id,
      required final String imageUrl,
      required final String pickupTime,
      required final String description,
      required final int quantity,
      required final String username,
      required final String title,
      required final String postUserId,
      required final String postPrice,
      @ServerTimestampConverter()
          required final FieldValue serverTimeStamp}) = _$_PostDto;
  const _PostDto._() : super._();

  factory _PostDto.fromJson(Map<String, dynamic> json) = _$_PostDto.fromJson;

  @override //@JsonKey(ignore: true) String? id,
  String get id => throw _privateConstructorUsedError;
  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  String get pickupTime => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get postUserId => throw _privateConstructorUsedError;
  @override
  String get postPrice => throw _privateConstructorUsedError;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PostDtoCopyWith<_$_PostDto> get copyWith =>
      throw _privateConstructorUsedError;
}
