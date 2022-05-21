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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatRoomDto _$ChatRoomDtoFromJson(Map<String, dynamic> json) {
  return _ChatRoomDto.fromJson(json);
}

/// @nodoc
class _$ChatRoomDtoTearOff {
  const _$ChatRoomDtoTearOff();

  _ChatRoomDto call(
      {required List<String> chatIds,
      required Map<String, dynamic> owner,
      required Map<String, dynamic> requester,
      required Map<String, dynamic> post,
      required List<Map<String, dynamic>> messages}) {
    return _ChatRoomDto(
      chatIds: chatIds,
      owner: owner,
      requester: requester,
      post: post,
      messages: messages,
    );
  }

  ChatRoomDto fromJson(Map<String, Object?> json) {
    return ChatRoomDto.fromJson(json);
  }
}

/// @nodoc
const $ChatRoomDto = _$ChatRoomDtoTearOff();

/// @nodoc
mixin _$ChatRoomDto {
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
      {List<String> chatIds,
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
    Object? chatIds = freezed,
    Object? owner = freezed,
    Object? requester = freezed,
    Object? post = freezed,
    Object? messages = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$ChatRoomDtoCopyWith<$Res>
    implements $ChatRoomDtoCopyWith<$Res> {
  factory _$ChatRoomDtoCopyWith(
          _ChatRoomDto value, $Res Function(_ChatRoomDto) then) =
      __$ChatRoomDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String> chatIds,
      Map<String, dynamic> owner,
      Map<String, dynamic> requester,
      Map<String, dynamic> post,
      List<Map<String, dynamic>> messages});
}

/// @nodoc
class __$ChatRoomDtoCopyWithImpl<$Res> extends _$ChatRoomDtoCopyWithImpl<$Res>
    implements _$ChatRoomDtoCopyWith<$Res> {
  __$ChatRoomDtoCopyWithImpl(
      _ChatRoomDto _value, $Res Function(_ChatRoomDto) _then)
      : super(_value, (v) => _then(v as _ChatRoomDto));

  @override
  _ChatRoomDto get _value => super._value as _ChatRoomDto;

  @override
  $Res call({
    Object? chatIds = freezed,
    Object? owner = freezed,
    Object? requester = freezed,
    Object? post = freezed,
    Object? messages = freezed,
  }) {
    return _then(_ChatRoomDto(
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
@JsonSerializable()
class _$_ChatRoomDto extends _ChatRoomDto {
  const _$_ChatRoomDto(
      {required this.chatIds,
      required this.owner,
      required this.requester,
      required this.post,
      required this.messages})
      : super._();

  factory _$_ChatRoomDto.fromJson(Map<String, dynamic> json) =>
      _$$_ChatRoomDtoFromJson(json);

  @override
  final List<String> chatIds;
  @override
  final Map<String, dynamic> owner;
  @override
  final Map<String, dynamic> requester;
  @override
  final Map<String, dynamic> post;
  @override
  final List<Map<String, dynamic>> messages;

  @override
  String toString() {
    return 'ChatRoomDto(chatIds: $chatIds, owner: $owner, requester: $requester, post: $post, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatRoomDto &&
            const DeepCollectionEquality().equals(other.chatIds, chatIds) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality().equals(other.requester, requester) &&
            const DeepCollectionEquality().equals(other.post, post) &&
            const DeepCollectionEquality().equals(other.messages, messages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(chatIds),
      const DeepCollectionEquality().hash(owner),
      const DeepCollectionEquality().hash(requester),
      const DeepCollectionEquality().hash(post),
      const DeepCollectionEquality().hash(messages));

  @JsonKey(ignore: true)
  @override
  _$ChatRoomDtoCopyWith<_ChatRoomDto> get copyWith =>
      __$ChatRoomDtoCopyWithImpl<_ChatRoomDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatRoomDtoToJson(this);
  }
}

abstract class _ChatRoomDto extends ChatRoomDto {
  const factory _ChatRoomDto(
      {required List<String> chatIds,
      required Map<String, dynamic> owner,
      required Map<String, dynamic> requester,
      required Map<String, dynamic> post,
      required List<Map<String, dynamic>> messages}) = _$_ChatRoomDto;
  const _ChatRoomDto._() : super._();

  factory _ChatRoomDto.fromJson(Map<String, dynamic> json) =
      _$_ChatRoomDto.fromJson;

  @override
  List<String> get chatIds;
  @override
  Map<String, dynamic> get owner;
  @override
  Map<String, dynamic> get requester;
  @override
  Map<String, dynamic> get post;
  @override
  List<Map<String, dynamic>> get messages;
  @override
  @JsonKey(ignore: true)
  _$ChatRoomDtoCopyWith<_ChatRoomDto> get copyWith =>
      throw _privateConstructorUsedError;
}

MessagesDto _$MessagesDtoFromJson(Map<String, dynamic> json) {
  return _MessagesDto.fromJson(json);
}

/// @nodoc
class _$MessagesDtoTearOff {
  const _$MessagesDtoTearOff();

  _MessagesDto call({required String id, required String message}) {
    return _MessagesDto(
      id: id,
      message: message,
    );
  }

  MessagesDto fromJson(Map<String, Object?> json) {
    return MessagesDto.fromJson(json);
  }
}

/// @nodoc
const $MessagesDto = _$MessagesDtoTearOff();

/// @nodoc
mixin _$MessagesDto {
  String get id => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

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
  $Res call({String id, String message});
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
    ));
  }
}

/// @nodoc
abstract class _$MessagesDtoCopyWith<$Res>
    implements $MessagesDtoCopyWith<$Res> {
  factory _$MessagesDtoCopyWith(
          _MessagesDto value, $Res Function(_MessagesDto) then) =
      __$MessagesDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String message});
}

/// @nodoc
class __$MessagesDtoCopyWithImpl<$Res> extends _$MessagesDtoCopyWithImpl<$Res>
    implements _$MessagesDtoCopyWith<$Res> {
  __$MessagesDtoCopyWithImpl(
      _MessagesDto _value, $Res Function(_MessagesDto) _then)
      : super(_value, (v) => _then(v as _MessagesDto));

  @override
  _MessagesDto get _value => super._value as _MessagesDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
  }) {
    return _then(_MessagesDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessagesDto extends _MessagesDto {
  const _$_MessagesDto({required this.id, required this.message}) : super._();

  factory _$_MessagesDto.fromJson(Map<String, dynamic> json) =>
      _$$_MessagesDtoFromJson(json);

  @override
  final String id;
  @override
  final String message;

  @override
  String toString() {
    return 'MessagesDto(id: $id, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessagesDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$MessagesDtoCopyWith<_MessagesDto> get copyWith =>
      __$MessagesDtoCopyWithImpl<_MessagesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessagesDtoToJson(this);
  }
}

abstract class _MessagesDto extends MessagesDto {
  const factory _MessagesDto({required String id, required String message}) =
      _$_MessagesDto;
  const _MessagesDto._() : super._();

  factory _MessagesDto.fromJson(Map<String, dynamic> json) =
      _$_MessagesDto.fromJson;

  @override
  String get id;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$MessagesDtoCopyWith<_MessagesDto> get copyWith =>
      throw _privateConstructorUsedError;
}
