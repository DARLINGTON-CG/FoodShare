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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostDto _$PostDtoFromJson(Map<String, dynamic> json) {
  return _PostDto.fromJson(json);
}

/// @nodoc
class _$PostDtoTearOff {
  const _$PostDtoTearOff();

  _PostDto call(
      {@JsonKey(ignore: true) String? id,
      required String imageUrl,
      required String pickupTime,
      required String description,
      required int quantity,
      required String title,
      required String postUserId,
      required String postPrice,
      @ServerTimestampConverter() required FieldValue serverTimeStamp}) {
    return _PostDto(
      id: id,
      imageUrl: imageUrl,
      pickupTime: pickupTime,
      description: description,
      quantity: quantity,
      title: title,
      postUserId: postUserId,
      postPrice: postPrice,
      serverTimeStamp: serverTimeStamp,
    );
  }

  PostDto fromJson(Map<String, Object?> json) {
    return PostDto.fromJson(json);
  }
}

/// @nodoc
const $PostDto = _$PostDtoTearOff();

/// @nodoc
mixin _$PostDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get pickupTime => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
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
      {@JsonKey(ignore: true) String? id,
      String imageUrl,
      String pickupTime,
      String description,
      int quantity,
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
    Object? title = freezed,
    Object? postUserId = freezed,
    Object? postPrice = freezed,
    Object? serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$PostDtoCopyWith<$Res> implements $PostDtoCopyWith<$Res> {
  factory _$PostDtoCopyWith(_PostDto value, $Res Function(_PostDto) then) =
      __$PostDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String imageUrl,
      String pickupTime,
      String description,
      int quantity,
      String title,
      String postUserId,
      String postPrice,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$PostDtoCopyWithImpl<$Res> extends _$PostDtoCopyWithImpl<$Res>
    implements _$PostDtoCopyWith<$Res> {
  __$PostDtoCopyWithImpl(_PostDto _value, $Res Function(_PostDto) _then)
      : super(_value, (v) => _then(v as _PostDto));

  @override
  _PostDto get _value => super._value as _PostDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? pickupTime = freezed,
    Object? description = freezed,
    Object? quantity = freezed,
    Object? title = freezed,
    Object? postUserId = freezed,
    Object? postPrice = freezed,
    Object? serverTimeStamp = freezed,
  }) {
    return _then(_PostDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {@JsonKey(ignore: true) this.id,
      required this.imageUrl,
      required this.pickupTime,
      required this.description,
      required this.quantity,
      required this.title,
      required this.postUserId,
      required this.postPrice,
      @ServerTimestampConverter() required this.serverTimeStamp})
      : super._();

  factory _$_PostDto.fromJson(Map<String, dynamic> json) =>
      _$$_PostDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String imageUrl;
  @override
  final String pickupTime;
  @override
  final String description;
  @override
  final int quantity;
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
    return 'PostDto(id: $id, imageUrl: $imageUrl, pickupTime: $pickupTime, description: $description, quantity: $quantity, title: $title, postUserId: $postUserId, postPrice: $postPrice, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.pickupTime, pickupTime) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.postUserId, postUserId) &&
            const DeepCollectionEquality().equals(other.postPrice, postPrice) &&
            const DeepCollectionEquality()
                .equals(other.serverTimeStamp, serverTimeStamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(pickupTime),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(postUserId),
      const DeepCollectionEquality().hash(postPrice),
      const DeepCollectionEquality().hash(serverTimeStamp));

  @JsonKey(ignore: true)
  @override
  _$PostDtoCopyWith<_PostDto> get copyWith =>
      __$PostDtoCopyWithImpl<_PostDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostDtoToJson(this);
  }
}

abstract class _PostDto extends PostDto {
  const factory _PostDto(
          {@JsonKey(ignore: true) String? id,
          required String imageUrl,
          required String pickupTime,
          required String description,
          required int quantity,
          required String title,
          required String postUserId,
          required String postPrice,
          @ServerTimestampConverter() required FieldValue serverTimeStamp}) =
      _$_PostDto;
  const _PostDto._() : super._();

  factory _PostDto.fromJson(Map<String, dynamic> json) = _$_PostDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get imageUrl;
  @override
  String get pickupTime;
  @override
  String get description;
  @override
  int get quantity;
  @override
  String get title;
  @override
  String get postUserId;
  @override
  String get postPrice;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  @JsonKey(ignore: true)
  _$PostDtoCopyWith<_PostDto> get copyWith =>
      throw _privateConstructorUsedError;
}
