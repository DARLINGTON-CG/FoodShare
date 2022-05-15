// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostTearOff {
  const _$PostTearOff();

  _Post call(
      {required UniqueId id,
      required PostDescription description,
      required PostQuantity quantity,
      required PostTitle title,
      required ImageUrl imageUrl,
      required PickupTime pickupTime,
      required PostUserId postUserId,
      required PostPrice postPrice}) {
    return _Post(
      id: id,
      description: description,
      quantity: quantity,
      title: title,
      imageUrl: imageUrl,
      pickupTime: pickupTime,
      postUserId: postUserId,
      postPrice: postPrice,
    );
  }
}

/// @nodoc
const $Post = _$PostTearOff();

/// @nodoc
mixin _$Post {
  UniqueId get id => throw _privateConstructorUsedError;
  PostDescription get description => throw _privateConstructorUsedError;
  PostQuantity get quantity => throw _privateConstructorUsedError;
  PostTitle get title => throw _privateConstructorUsedError;
  ImageUrl get imageUrl => throw _privateConstructorUsedError;
  PickupTime get pickupTime => throw _privateConstructorUsedError;
  PostUserId get postUserId => throw _privateConstructorUsedError;
  PostPrice get postPrice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      PostDescription description,
      PostQuantity quantity,
      PostTitle title,
      ImageUrl imageUrl,
      PickupTime pickupTime,
      PostUserId postUserId,
      PostPrice postPrice});
}

/// @nodoc
class _$PostCopyWithImpl<$Res> implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  final Post _value;
  // ignore: unused_field
  final $Res Function(Post) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? quantity = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? pickupTime = freezed,
    Object? postUserId = freezed,
    Object? postPrice = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as PostDescription,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as PostQuantity,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as PostTitle,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as ImageUrl,
      pickupTime: pickupTime == freezed
          ? _value.pickupTime
          : pickupTime // ignore: cast_nullable_to_non_nullable
              as PickupTime,
      postUserId: postUserId == freezed
          ? _value.postUserId
          : postUserId // ignore: cast_nullable_to_non_nullable
              as PostUserId,
      postPrice: postPrice == freezed
          ? _value.postPrice
          : postPrice // ignore: cast_nullable_to_non_nullable
              as PostPrice,
    ));
  }
}

/// @nodoc
abstract class _$PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$PostCopyWith(_Post value, $Res Function(_Post) then) =
      __$PostCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      PostDescription description,
      PostQuantity quantity,
      PostTitle title,
      ImageUrl imageUrl,
      PickupTime pickupTime,
      PostUserId postUserId,
      PostPrice postPrice});
}

/// @nodoc
class __$PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res>
    implements _$PostCopyWith<$Res> {
  __$PostCopyWithImpl(_Post _value, $Res Function(_Post) _then)
      : super(_value, (v) => _then(v as _Post));

  @override
  _Post get _value => super._value as _Post;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? quantity = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? pickupTime = freezed,
    Object? postUserId = freezed,
    Object? postPrice = freezed,
  }) {
    return _then(_Post(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as PostDescription,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as PostQuantity,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as PostTitle,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as ImageUrl,
      pickupTime: pickupTime == freezed
          ? _value.pickupTime
          : pickupTime // ignore: cast_nullable_to_non_nullable
              as PickupTime,
      postUserId: postUserId == freezed
          ? _value.postUserId
          : postUserId // ignore: cast_nullable_to_non_nullable
              as PostUserId,
      postPrice: postPrice == freezed
          ? _value.postPrice
          : postPrice // ignore: cast_nullable_to_non_nullable
              as PostPrice,
    ));
  }
}

/// @nodoc

class _$_Post extends _Post {
  const _$_Post(
      {required this.id,
      required this.description,
      required this.quantity,
      required this.title,
      required this.imageUrl,
      required this.pickupTime,
      required this.postUserId,
      required this.postPrice})
      : super._();

  @override
  final UniqueId id;
  @override
  final PostDescription description;
  @override
  final PostQuantity quantity;
  @override
  final PostTitle title;
  @override
  final ImageUrl imageUrl;
  @override
  final PickupTime pickupTime;
  @override
  final PostUserId postUserId;
  @override
  final PostPrice postPrice;

  @override
  String toString() {
    return 'Post(id: $id, description: $description, quantity: $quantity, title: $title, imageUrl: $imageUrl, pickupTime: $pickupTime, postUserId: $postUserId, postPrice: $postPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Post &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.pickupTime, pickupTime) &&
            const DeepCollectionEquality()
                .equals(other.postUserId, postUserId) &&
            const DeepCollectionEquality().equals(other.postPrice, postPrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(pickupTime),
      const DeepCollectionEquality().hash(postUserId),
      const DeepCollectionEquality().hash(postPrice));

  @JsonKey(ignore: true)
  @override
  _$PostCopyWith<_Post> get copyWith =>
      __$PostCopyWithImpl<_Post>(this, _$identity);
}

abstract class _Post extends Post {
  const factory _Post(
      {required UniqueId id,
      required PostDescription description,
      required PostQuantity quantity,
      required PostTitle title,
      required ImageUrl imageUrl,
      required PickupTime pickupTime,
      required PostUserId postUserId,
      required PostPrice postPrice}) = _$_Post;
  const _Post._() : super._();

  @override
  UniqueId get id;
  @override
  PostDescription get description;
  @override
  PostQuantity get quantity;
  @override
  PostTitle get title;
  @override
  ImageUrl get imageUrl;
  @override
  PickupTime get pickupTime;
  @override
  PostUserId get postUserId;
  @override
  PostPrice get postPrice;
  @override
  @JsonKey(ignore: true)
  _$PostCopyWith<_Post> get copyWith => throw _privateConstructorUsedError;
}
