// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_room_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatRoomDto _$ChatRoomDtoFromJson(Map<String, dynamic> json) {
  return _ChatRoomDto.fromJson(json);
}

/// @nodoc
mixin _$ChatRoomDto {
  String get ownerTime => throw _privateConstructorUsedError;
  String get requesterTime => throw _privateConstructorUsedError;
  List<String> get chatIds => throw _privateConstructorUsedError;
  Map<String, dynamic> get owner => throw _privateConstructorUsedError;
  Map<String, dynamic> get requester => throw _privateConstructorUsedError;
  Map<String, dynamic> get post => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatRoomDtoCopyWith<ChatRoomDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomDtoCopyWith<$Res> {
  factory $ChatRoomDtoCopyWith(
          ChatRoomDto value, $Res Function(ChatRoomDto) then) =
      _$ChatRoomDtoCopyWithImpl<$Res>;
  $Res call(
      {String ownerTime,
      String requesterTime,
      List<String> chatIds,
      Map<String, dynamic> owner,
      Map<String, dynamic> requester,
      Map<String, dynamic> post,
      List<Map<String, dynamic>> messages});
}

/// @nodoc
class _$ChatRoomDtoCopyWithImpl<$Res> implements $ChatRoomDtoCopyWith<$Res> {
  _$ChatRoomDtoCopyWithImpl(this._value, this._then);

  final ChatRoomDto _value;
  // ignore: unused_field
  final $Res Function(ChatRoomDto) _then;

  @override
  $Res call({
    Object? ownerTime = freezed,
    Object? requesterTime = freezed,
    Object? chatIds = freezed,
    Object? owner = freezed,
    Object? requester = freezed,
    Object? post = freezed,
    Object? messages = freezed,
  }) {
    return _then(_value.copyWith(
      ownerTime: ownerTime == freezed
          ? _value.ownerTime
          : ownerTime // ignore: cast_nullable_to_non_nullable
              as String,
      requesterTime: requesterTime == freezed
          ? _value.requesterTime
          : requesterTime // ignore: cast_nullable_to_non_nullable
              as String,
      chatIds: chatIds == freezed
          ? _value.chatIds
          : chatIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      requester: requester == freezed
          ? _value.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
abstract class _$$_ChatRoomDtoCopyWith<$Res>
    implements $ChatRoomDtoCopyWith<$Res> {
  factory _$$_ChatRoomDtoCopyWith(
          _$_ChatRoomDto value, $Res Function(_$_ChatRoomDto) then) =
      __$$_ChatRoomDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String ownerTime,
      String requesterTime,
      List<String> chatIds,
      Map<String, dynamic> owner,
      Map<String, dynamic> requester,
      Map<String, dynamic> post,
      List<Map<String, dynamic>> messages});
}

/// @nodoc
class __$$_ChatRoomDtoCopyWithImpl<$Res> extends _$ChatRoomDtoCopyWithImpl<$Res>
    implements _$$_ChatRoomDtoCopyWith<$Res> {
  __$$_ChatRoomDtoCopyWithImpl(
      _$_ChatRoomDto _value, $Res Function(_$_ChatRoomDto) _then)
      : super(_value, (v) => _then(v as _$_ChatRoomDto));

  @override
  _$_ChatRoomDto get _value => super._value as _$_ChatRoomDto;

  @override
  $Res call({
    Object? ownerTime = freezed,
    Object? requesterTime = freezed,
    Object? chatIds = freezed,
    Object? owner = freezed,
    Object? requester = freezed,
    Object? post = freezed,
    Object? messages = freezed,
  }) {
    return _then(_$_ChatRoomDto(
      ownerTime: ownerTime == freezed
          ? _value.ownerTime
          : ownerTime // ignore: cast_nullable_to_non_nullable
              as String,
      requesterTime: requesterTime == freezed
          ? _value.requesterTime
          : requesterTime // ignore: cast_nullable_to_non_nullable
              as String,
      chatIds: chatIds == freezed
          ? _value._chatIds
          : chatIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      owner: owner == freezed
          ? _value._owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      requester: requester == freezed
          ? _value._requester
          : requester // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      post: post == freezed
          ? _value._post
          : post // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      messages: messages == freezed
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatRoomDto extends _ChatRoomDto {
  const _$_ChatRoomDto(
      {required this.ownerTime,
      required this.requesterTime,
      required final List<String> chatIds,
      required final Map<String, dynamic> owner,
      required final Map<String, dynamic> requester,
      required final Map<String, dynamic> post,
      required final List<Map<String, dynamic>> messages})
      : _chatIds = chatIds,
        _owner = owner,
        _requester = requester,
        _post = post,
        _messages = messages,
        super._();

  factory _$_ChatRoomDto.fromJson(Map<String, dynamic> json) =>
      _$$_ChatRoomDtoFromJson(json);

  @override
  final String ownerTime;
  @override
  final String requesterTime;
  final List<String> _chatIds;
  @override
  List<String> get chatIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatIds);
  }

  final Map<String, dynamic> _owner;
  @override
  Map<String, dynamic> get owner {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_owner);
  }

  final Map<String, dynamic> _requester;
  @override
  Map<String, dynamic> get requester {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_requester);
  }

  final Map<String, dynamic> _post;
  @override
  Map<String, dynamic> get post {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_post);
  }

  final List<Map<String, dynamic>> _messages;
  @override
  List<Map<String, dynamic>> get messages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatRoomDto(ownerTime: $ownerTime, requesterTime: $requesterTime, chatIds: $chatIds, owner: $owner, requester: $requester, post: $post, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatRoomDto &&
            const DeepCollectionEquality().equals(other.ownerTime, ownerTime) &&
            const DeepCollectionEquality()
                .equals(other.requesterTime, requesterTime) &&
            const DeepCollectionEquality().equals(other._chatIds, _chatIds) &&
            const DeepCollectionEquality().equals(other._owner, _owner) &&
            const DeepCollectionEquality()
                .equals(other._requester, _requester) &&
            const DeepCollectionEquality().equals(other._post, _post) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ownerTime),
      const DeepCollectionEquality().hash(requesterTime),
      const DeepCollectionEquality().hash(_chatIds),
      const DeepCollectionEquality().hash(_owner),
      const DeepCollectionEquality().hash(_requester),
      const DeepCollectionEquality().hash(_post),
      const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  _$$_ChatRoomDtoCopyWith<_$_ChatRoomDto> get copyWith =>
      __$$_ChatRoomDtoCopyWithImpl<_$_ChatRoomDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatRoomDtoToJson(this);
  }
}

abstract class _ChatRoomDto extends ChatRoomDto {
  const factory _ChatRoomDto(
      {required final String ownerTime,
      required final String requesterTime,
      required final List<String> chatIds,
      required final Map<String, dynamic> owner,
      required final Map<String, dynamic> requester,
      required final Map<String, dynamic> post,
      required final List<Map<String, dynamic>> messages}) = _$_ChatRoomDto;
  const _ChatRoomDto._() : super._();

  factory _ChatRoomDto.fromJson(Map<String, dynamic> json) =
      _$_ChatRoomDto.fromJson;

  @override
  String get ownerTime => throw _privateConstructorUsedError;
  @override
  String get requesterTime => throw _privateConstructorUsedError;
  @override
  List<String> get chatIds => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get owner => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get requester => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get post => throw _privateConstructorUsedError;
  @override
  List<Map<String, dynamic>> get messages => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ChatRoomDtoCopyWith<_$_ChatRoomDto> get copyWith =>
      throw _privateConstructorUsedError;
}

MessagesDto _$MessagesDtoFromJson(Map<String, dynamic> json) {
  return _MessagesDto.fromJson(json);
}

/// @nodoc
mixin _$MessagesDto {
  String get id => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get messageType => throw _privateConstructorUsedError;
  String get messageTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessagesDtoCopyWith<MessagesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesDtoCopyWith<$Res> {
  factory $MessagesDtoCopyWith(
          MessagesDto value, $Res Function(MessagesDto) then) =
      _$MessagesDtoCopyWithImpl<$Res>;
  $Res call(
      {String id, String message, String messageType, String messageTime});
}

/// @nodoc
class _$MessagesDtoCopyWithImpl<$Res> implements $MessagesDtoCopyWith<$Res> {
  _$MessagesDtoCopyWithImpl(this._value, this._then);

  final MessagesDto _value;
  // ignore: unused_field
  final $Res Function(MessagesDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
    Object? messageType = freezed,
    Object? messageTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      messageType: messageType == freezed
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String,
      messageTime: messageTime == freezed
          ? _value.messageTime
          : messageTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MessagesDtoCopyWith<$Res>
    implements $MessagesDtoCopyWith<$Res> {
  factory _$$_MessagesDtoCopyWith(
          _$_MessagesDto value, $Res Function(_$_MessagesDto) then) =
      __$$_MessagesDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, String message, String messageType, String messageTime});
}

/// @nodoc
class __$$_MessagesDtoCopyWithImpl<$Res> extends _$MessagesDtoCopyWithImpl<$Res>
    implements _$$_MessagesDtoCopyWith<$Res> {
  __$$_MessagesDtoCopyWithImpl(
      _$_MessagesDto _value, $Res Function(_$_MessagesDto) _then)
      : super(_value, (v) => _then(v as _$_MessagesDto));

  @override
  _$_MessagesDto get _value => super._value as _$_MessagesDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
    Object? messageType = freezed,
    Object? messageTime = freezed,
  }) {
    return _then(_$_MessagesDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      messageType: messageType == freezed
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String,
      messageTime: messageTime == freezed
          ? _value.messageTime
          : messageTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessagesDto extends _MessagesDto {
  const _$_MessagesDto(
      {required this.id,
      required this.message,
      required this.messageType,
      required this.messageTime})
      : super._();

  factory _$_MessagesDto.fromJson(Map<String, dynamic> json) =>
      _$$_MessagesDtoFromJson(json);

  @override
  final String id;
  @override
  final String message;
  @override
  final String messageType;
  @override
  final String messageTime;

  @override
  String toString() {
    return 'MessagesDto(id: $id, message: $message, messageType: $messageType, messageTime: $messageTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessagesDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.messageType, messageType) &&
            const DeepCollectionEquality()
                .equals(other.messageTime, messageTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(messageType),
      const DeepCollectionEquality().hash(messageTime));

  @JsonKey(ignore: true)
  @override
  _$$_MessagesDtoCopyWith<_$_MessagesDto> get copyWith =>
      __$$_MessagesDtoCopyWithImpl<_$_MessagesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessagesDtoToJson(this);
  }
}

abstract class _MessagesDto extends MessagesDto {
  const factory _MessagesDto(
      {required final String id,
      required final String message,
      required final String messageType,
      required final String messageTime}) = _$_MessagesDto;
  const _MessagesDto._() : super._();

  factory _MessagesDto.fromJson(Map<String, dynamic> json) =
      _$_MessagesDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  String get messageType => throw _privateConstructorUsedError;
  @override
  String get messageTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MessagesDtoCopyWith<_$_MessagesDto> get copyWith =>
      throw _privateConstructorUsedError;
}
