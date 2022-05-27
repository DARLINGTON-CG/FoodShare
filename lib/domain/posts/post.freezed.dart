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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  Username get username => throw _privateConstructorUsedError;

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
      PostPrice postPrice,
      Username username});
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
    Object? username = freezed,
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
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
    ));
  }
}

/// @nodoc
abstract class _$$_PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$_PostCopyWith(_$_Post value, $Res Function(_$_Post) then) =
      __$$_PostCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      PostDescription description,
      PostQuantity quantity,
      PostTitle title,
      ImageUrl imageUrl,
      PickupTime pickupTime,
      PostUserId postUserId,
      PostPrice postPrice,
      Username username});
}

/// @nodoc
class __$$_PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res>
    implements _$$_PostCopyWith<$Res> {
  __$$_PostCopyWithImpl(_$_Post _value, $Res Function(_$_Post) _then)
      : super(_value, (v) => _then(v as _$_Post));

  @override
  _$_Post get _value => super._value as _$_Post;

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
    Object? username = freezed,
  }) {
    return _then(_$_Post(
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
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
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
      required this.postPrice,
      required this.username})
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
  final Username username;

  @override
  String toString() {
    return 'Post(id: $id, description: $description, quantity: $quantity, title: $title, imageUrl: $imageUrl, pickupTime: $pickupTime, postUserId: $postUserId, postPrice: $postPrice, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Post &&
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
            const DeepCollectionEquality().equals(other.postPrice, postPrice) &&
            const DeepCollectionEquality().equals(other.username, username));
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
      const DeepCollectionEquality().hash(postPrice),
      const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$_PostCopyWith<_$_Post> get copyWith =>
      __$$_PostCopyWithImpl<_$_Post>(this, _$identity);
}

abstract class _Post extends Post {
  const factory _Post(
      {required final UniqueId id,
      required final PostDescription description,
      required final PostQuantity quantity,
      required final PostTitle title,
      required final ImageUrl imageUrl,
      required final PickupTime pickupTime,
      required final PostUserId postUserId,
      required final PostPrice postPrice,
      required final Username username}) = _$_Post;
  const _Post._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  PostDescription get description => throw _privateConstructorUsedError;
  @override
  PostQuantity get quantity => throw _privateConstructorUsedError;
  @override
  PostTitle get title => throw _privateConstructorUsedError;
  @override
  ImageUrl get imageUrl => throw _privateConstructorUsedError;
  @override
  PickupTime get pickupTime => throw _privateConstructorUsedError;
  @override
  PostUserId get postUserId => throw _privateConstructorUsedError;
  @override
  PostPrice get postPrice => throw _privateConstructorUsedError;
  @override
  Username get username => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PostCopyWith<_$_Post> get copyWith => throw _privateConstructorUsedError;
}
