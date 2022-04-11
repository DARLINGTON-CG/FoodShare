// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostFormEventTearOff {
  const _$PostFormEventTearOff();

  _Initialized initialized(Option<Post> intialPostOption) {
    return _Initialized(
      intialPostOption,
    );
  }

  _BodyChanged bodyChanged(String bodyStr) {
    return _BodyChanged(
      bodyStr,
    );
  }

  _OptionChanged optionChanged(String optionStr) {
    return _OptionChanged(
      optionStr,
    );
  }

  _NameChanged nameChanged(String name) {
    return _NameChanged(
      name,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
const $PostFormEvent = _$PostFormEventTearOff();

/// @nodoc
mixin _$PostFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Post> intialPostOption) initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(String optionStr) optionChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Post> intialPostOption)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(String optionStr)? optionChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Post> intialPostOption)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(String optionStr)? optionChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_OptionChanged value) optionChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_OptionChanged value)? optionChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_OptionChanged value)? optionChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostFormEventCopyWith<$Res> {
  factory $PostFormEventCopyWith(
          PostFormEvent value, $Res Function(PostFormEvent) then) =
      _$PostFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostFormEventCopyWithImpl<$Res>
    implements $PostFormEventCopyWith<$Res> {
  _$PostFormEventCopyWithImpl(this._value, this._then);

  final PostFormEvent _value;
  // ignore: unused_field
  final $Res Function(PostFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Post> intialPostOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$PostFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? intialPostOption = freezed,
  }) {
    return _then(_Initialized(
      intialPostOption == freezed
          ? _value.intialPostOption
          : intialPostOption // ignore: cast_nullable_to_non_nullable
              as Option<Post>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.intialPostOption);

  @override
  final Option<Post> intialPostOption;

  @override
  String toString() {
    return 'PostFormEvent.initialized(intialPostOption: $intialPostOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialized &&
            const DeepCollectionEquality()
                .equals(other.intialPostOption, intialPostOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(intialPostOption));

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Post> intialPostOption) initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(String optionStr) optionChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() saved,
  }) {
    return initialized(intialPostOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Post> intialPostOption)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(String optionStr)? optionChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? saved,
  }) {
    return initialized?.call(intialPostOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Post> intialPostOption)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(String optionStr)? optionChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(intialPostOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_OptionChanged value) optionChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_OptionChanged value)? optionChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_OptionChanged value)? optionChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements PostFormEvent {
  const factory _Initialized(Option<Post> intialPostOption) = _$_Initialized;

  Option<Post> get intialPostOption;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BodyChangedCopyWith<$Res> {
  factory _$BodyChangedCopyWith(
          _BodyChanged value, $Res Function(_BodyChanged) then) =
      __$BodyChangedCopyWithImpl<$Res>;
  $Res call({String bodyStr});
}

/// @nodoc
class __$BodyChangedCopyWithImpl<$Res> extends _$PostFormEventCopyWithImpl<$Res>
    implements _$BodyChangedCopyWith<$Res> {
  __$BodyChangedCopyWithImpl(
      _BodyChanged _value, $Res Function(_BodyChanged) _then)
      : super(_value, (v) => _then(v as _BodyChanged));

  @override
  _BodyChanged get _value => super._value as _BodyChanged;

  @override
  $Res call({
    Object? bodyStr = freezed,
  }) {
    return _then(_BodyChanged(
      bodyStr == freezed
          ? _value.bodyStr
          : bodyStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BodyChanged implements _BodyChanged {
  const _$_BodyChanged(this.bodyStr);

  @override
  final String bodyStr;

  @override
  String toString() {
    return 'PostFormEvent.bodyChanged(bodyStr: $bodyStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BodyChanged &&
            const DeepCollectionEquality().equals(other.bodyStr, bodyStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(bodyStr));

  @JsonKey(ignore: true)
  @override
  _$BodyChangedCopyWith<_BodyChanged> get copyWith =>
      __$BodyChangedCopyWithImpl<_BodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Post> intialPostOption) initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(String optionStr) optionChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() saved,
  }) {
    return bodyChanged(bodyStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Post> intialPostOption)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(String optionStr)? optionChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? saved,
  }) {
    return bodyChanged?.call(bodyStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Post> intialPostOption)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(String optionStr)? optionChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (bodyChanged != null) {
      return bodyChanged(bodyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_OptionChanged value) optionChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return bodyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_OptionChanged value)? optionChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return bodyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_OptionChanged value)? optionChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (bodyChanged != null) {
      return bodyChanged(this);
    }
    return orElse();
  }
}

abstract class _BodyChanged implements PostFormEvent {
  const factory _BodyChanged(String bodyStr) = _$_BodyChanged;

  String get bodyStr;
  @JsonKey(ignore: true)
  _$BodyChangedCopyWith<_BodyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OptionChangedCopyWith<$Res> {
  factory _$OptionChangedCopyWith(
          _OptionChanged value, $Res Function(_OptionChanged) then) =
      __$OptionChangedCopyWithImpl<$Res>;
  $Res call({String optionStr});
}

/// @nodoc
class __$OptionChangedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res>
    implements _$OptionChangedCopyWith<$Res> {
  __$OptionChangedCopyWithImpl(
      _OptionChanged _value, $Res Function(_OptionChanged) _then)
      : super(_value, (v) => _then(v as _OptionChanged));

  @override
  _OptionChanged get _value => super._value as _OptionChanged;

  @override
  $Res call({
    Object? optionStr = freezed,
  }) {
    return _then(_OptionChanged(
      optionStr == freezed
          ? _value.optionStr
          : optionStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OptionChanged implements _OptionChanged {
  const _$_OptionChanged(this.optionStr);

  @override
  final String optionStr;

  @override
  String toString() {
    return 'PostFormEvent.optionChanged(optionStr: $optionStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OptionChanged &&
            const DeepCollectionEquality().equals(other.optionStr, optionStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(optionStr));

  @JsonKey(ignore: true)
  @override
  _$OptionChangedCopyWith<_OptionChanged> get copyWith =>
      __$OptionChangedCopyWithImpl<_OptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Post> intialPostOption) initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(String optionStr) optionChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() saved,
  }) {
    return optionChanged(optionStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Post> intialPostOption)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(String optionStr)? optionChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? saved,
  }) {
    return optionChanged?.call(optionStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Post> intialPostOption)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(String optionStr)? optionChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (optionChanged != null) {
      return optionChanged(optionStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_OptionChanged value) optionChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return optionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_OptionChanged value)? optionChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return optionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_OptionChanged value)? optionChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (optionChanged != null) {
      return optionChanged(this);
    }
    return orElse();
  }
}

abstract class _OptionChanged implements PostFormEvent {
  const factory _OptionChanged(String optionStr) = _$_OptionChanged;

  String get optionStr;
  @JsonKey(ignore: true)
  _$OptionChangedCopyWith<_OptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res> extends _$PostFormEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_NameChanged(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'PostFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NameChanged &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Post> intialPostOption) initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(String optionStr) optionChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() saved,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Post> intialPostOption)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(String optionStr)? optionChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? saved,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Post> intialPostOption)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(String optionStr)? optionChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_OptionChanged value) optionChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_OptionChanged value)? optionChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_OptionChanged value)? optionChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements PostFormEvent {
  const factory _NameChanged(String name) = _$_NameChanged;

  String get name;
  @JsonKey(ignore: true)
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$PostFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'PostFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Post> intialPostOption) initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(String optionStr) optionChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Post> intialPostOption)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(String optionStr)? optionChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Post> intialPostOption)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(String optionStr)? optionChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_OptionChanged value) optionChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_OptionChanged value)? optionChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_OptionChanged value)? optionChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements PostFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$PostFormStateTearOff {
  const _$PostFormStateTearOff();

  _PostFormState call(
      {required Post post,
      required bool showErrorMessages,
      required bool isSaving,
      required bool isEditing,
      required Option<Either<PostFailure, Unit>> successOrFailure}) {
    return _PostFormState(
      post: post,
      showErrorMessages: showErrorMessages,
      isSaving: isSaving,
      isEditing: isEditing,
      successOrFailure: successOrFailure,
    );
  }
}

/// @nodoc
const $PostFormState = _$PostFormStateTearOff();

/// @nodoc
mixin _$PostFormState {
  Post get post => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  Option<Either<PostFailure, Unit>> get successOrFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostFormStateCopyWith<PostFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostFormStateCopyWith<$Res> {
  factory $PostFormStateCopyWith(
          PostFormState value, $Res Function(PostFormState) then) =
      _$PostFormStateCopyWithImpl<$Res>;
  $Res call(
      {Post post,
      bool showErrorMessages,
      bool isSaving,
      bool isEditing,
      Option<Either<PostFailure, Unit>> successOrFailure});

  $PostCopyWith<$Res> get post;
}

/// @nodoc
class _$PostFormStateCopyWithImpl<$Res>
    implements $PostFormStateCopyWith<$Res> {
  _$PostFormStateCopyWithImpl(this._value, this._then);

  final PostFormState _value;
  // ignore: unused_field
  final $Res Function(PostFormState) _then;

  @override
  $Res call({
    Object? post = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? isEditing = freezed,
    Object? successOrFailure = freezed,
  }) {
    return _then(_value.copyWith(
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      successOrFailure: successOrFailure == freezed
          ? _value.successOrFailure
          : successOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<PostFailure, Unit>>,
    ));
  }

  @override
  $PostCopyWith<$Res> get post {
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

/// @nodoc
abstract class _$PostFormStateCopyWith<$Res>
    implements $PostFormStateCopyWith<$Res> {
  factory _$PostFormStateCopyWith(
          _PostFormState value, $Res Function(_PostFormState) then) =
      __$PostFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Post post,
      bool showErrorMessages,
      bool isSaving,
      bool isEditing,
      Option<Either<PostFailure, Unit>> successOrFailure});

  @override
  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$PostFormStateCopyWithImpl<$Res>
    extends _$PostFormStateCopyWithImpl<$Res>
    implements _$PostFormStateCopyWith<$Res> {
  __$PostFormStateCopyWithImpl(
      _PostFormState _value, $Res Function(_PostFormState) _then)
      : super(_value, (v) => _then(v as _PostFormState));

  @override
  _PostFormState get _value => super._value as _PostFormState;

  @override
  $Res call({
    Object? post = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? isEditing = freezed,
    Object? successOrFailure = freezed,
  }) {
    return _then(_PostFormState(
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      successOrFailure: successOrFailure == freezed
          ? _value.successOrFailure
          : successOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<PostFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_PostFormState implements _PostFormState {
  const _$_PostFormState(
      {required this.post,
      required this.showErrorMessages,
      required this.isSaving,
      required this.isEditing,
      required this.successOrFailure});

  @override
  final Post post;
  @override
  final bool showErrorMessages;
  @override
  final bool isSaving;
  @override
  final bool isEditing;
  @override
  final Option<Either<PostFailure, Unit>> successOrFailure;

  @override
  String toString() {
    return 'PostFormState(post: $post, showErrorMessages: $showErrorMessages, isSaving: $isSaving, isEditing: $isEditing, successOrFailure: $successOrFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostFormState &&
            const DeepCollectionEquality().equals(other.post, post) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality()
                .equals(other.successOrFailure, successOrFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(post),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(successOrFailure));

  @JsonKey(ignore: true)
  @override
  _$PostFormStateCopyWith<_PostFormState> get copyWith =>
      __$PostFormStateCopyWithImpl<_PostFormState>(this, _$identity);
}

abstract class _PostFormState implements PostFormState {
  const factory _PostFormState(
          {required Post post,
          required bool showErrorMessages,
          required bool isSaving,
          required bool isEditing,
          required Option<Either<PostFailure, Unit>> successOrFailure}) =
      _$_PostFormState;

  @override
  Post get post;
  @override
  bool get showErrorMessages;
  @override
  bool get isSaving;
  @override
  bool get isEditing;
  @override
  Option<Either<PostFailure, Unit>> get successOrFailure;
  @override
  @JsonKey(ignore: true)
  _$PostFormStateCopyWith<_PostFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
