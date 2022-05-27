// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatRoom {
  List<String> get chatIds => throw _privateConstructorUsedError;
  Post get post => throw _privateConstructorUsedError;
  UserData get owner => throw _privateConstructorUsedError;
  UserData get requester => throw _privateConstructorUsedError;
  MessageList<Message> get messages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatRoomCopyWith<ChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomCopyWith<$Res> {
  factory $ChatRoomCopyWith(ChatRoom value, $Res Function(ChatRoom) then) =
      _$ChatRoomCopyWithImpl<$Res>;
  $Res call(
      {List<String> chatIds,
      Post post,
      UserData owner,
      UserData requester,
      MessageList<Message> messages});

  $PostCopyWith<$Res> get post;
  $UserDataCopyWith<$Res> get owner;
  $UserDataCopyWith<$Res> get requester;
}

/// @nodoc
class _$ChatRoomCopyWithImpl<$Res> implements $ChatRoomCopyWith<$Res> {
  _$ChatRoomCopyWithImpl(this._value, this._then);

  final ChatRoom _value;
  // ignore: unused_field
  final $Res Function(ChatRoom) _then;

  @override
  $Res call({
    Object? chatIds = freezed,
    Object? post = freezed,
    Object? owner = freezed,
    Object? requester = freezed,
    Object? messages = freezed,
  }) {
    return _then(_value.copyWith(
      chatIds: chatIds == freezed
          ? _value.chatIds
          : chatIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserData,
      requester: requester == freezed
          ? _value.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as UserData,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as MessageList<Message>,
    ));
  }

  @override
  $PostCopyWith<$Res> get post {
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }

  @override
  $UserDataCopyWith<$Res> get owner {
    return $UserDataCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }

  @override
  $UserDataCopyWith<$Res> get requester {
    return $UserDataCopyWith<$Res>(_value.requester, (value) {
      return _then(_value.copyWith(requester: value));
    });
  }
}

/// @nodoc
abstract class _$$_ChatRoomCopyWith<$Res> implements $ChatRoomCopyWith<$Res> {
  factory _$$_ChatRoomCopyWith(
          _$_ChatRoom value, $Res Function(_$_ChatRoom) then) =
      __$$_ChatRoomCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String> chatIds,
      Post post,
      UserData owner,
      UserData requester,
      MessageList<Message> messages});

  @override
  $PostCopyWith<$Res> get post;
  @override
  $UserDataCopyWith<$Res> get owner;
  @override
  $UserDataCopyWith<$Res> get requester;
}

/// @nodoc
class __$$_ChatRoomCopyWithImpl<$Res> extends _$ChatRoomCopyWithImpl<$Res>
    implements _$$_ChatRoomCopyWith<$Res> {
  __$$_ChatRoomCopyWithImpl(
      _$_ChatRoom _value, $Res Function(_$_ChatRoom) _then)
      : super(_value, (v) => _then(v as _$_ChatRoom));

  @override
  _$_ChatRoom get _value => super._value as _$_ChatRoom;

  @override
  $Res call({
    Object? chatIds = freezed,
    Object? post = freezed,
    Object? owner = freezed,
    Object? requester = freezed,
    Object? messages = freezed,
  }) {
    return _then(_$_ChatRoom(
      chatIds: chatIds == freezed
          ? _value._chatIds
          : chatIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserData,
      requester: requester == freezed
          ? _value.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as UserData,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as MessageList<Message>,
    ));
  }
}

/// @nodoc

class _$_ChatRoom extends _ChatRoom {
  const _$_ChatRoom(
      {required final List<String> chatIds,
      required this.post,
      required this.owner,
      required this.requester,
      required this.messages})
      : _chatIds = chatIds,
        super._();

  final List<String> _chatIds;
  @override
  List<String> get chatIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatIds);
  }

  @override
  final Post post;
  @override
  final UserData owner;
  @override
  final UserData requester;
  @override
  final MessageList<Message> messages;

  @override
  String toString() {
    return 'ChatRoom(chatIds: $chatIds, post: $post, owner: $owner, requester: $requester, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatRoom &&
            const DeepCollectionEquality().equals(other._chatIds, _chatIds) &&
            const DeepCollectionEquality().equals(other.post, post) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality().equals(other.requester, requester) &&
            const DeepCollectionEquality().equals(other.messages, messages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_chatIds),
      const DeepCollectionEquality().hash(post),
      const DeepCollectionEquality().hash(owner),
      const DeepCollectionEquality().hash(requester),
      const DeepCollectionEquality().hash(messages));

  @JsonKey(ignore: true)
  @override
  _$$_ChatRoomCopyWith<_$_ChatRoom> get copyWith =>
      __$$_ChatRoomCopyWithImpl<_$_ChatRoom>(this, _$identity);
}

abstract class _ChatRoom extends ChatRoom {
  const factory _ChatRoom(
      {required final List<String> chatIds,
      required final Post post,
      required final UserData owner,
      required final UserData requester,
      required final MessageList<Message> messages}) = _$_ChatRoom;
  const _ChatRoom._() : super._();

  @override
  List<String> get chatIds => throw _privateConstructorUsedError;
  @override
  Post get post => throw _privateConstructorUsedError;
  @override
  UserData get owner => throw _privateConstructorUsedError;
  @override
  UserData get requester => throw _privateConstructorUsedError;
  @override
  MessageList<Message> get messages => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ChatRoomCopyWith<_$_ChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
