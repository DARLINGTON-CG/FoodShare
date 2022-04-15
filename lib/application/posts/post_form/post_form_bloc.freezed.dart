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

  _DescriptionChanged descriptionChanged(String description) {
    return _DescriptionChanged(
      description,
    );
  }

  _QuantityChanged quantityChanged(int quantity) {
    return _QuantityChanged(
      quantity,
    );
  }

  _TitleChanged titleChanged(String title) {
    return _TitleChanged(
      title,
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
    required TResult Function(String description) descriptionChanged,
    required TResult Function(int quantity) quantityChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Post> intialPostOption)? initialized,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int quantity)? quantityChanged,
    TResult Function(String title)? titleChanged,
    TResult Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Post> intialPostOption)? initialized,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int quantity)? quantityChanged,
    TResult Function(String title)? titleChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_QuantityChanged value) quantityChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_TitleChanged value)? titleChanged,
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
    required TResult Function(String description) descriptionChanged,
    required TResult Function(int quantity) quantityChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function() saved,
  }) {
    return initialized(intialPostOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Post> intialPostOption)? initialized,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int quantity)? quantityChanged,
    TResult Function(String title)? titleChanged,
    TResult Function()? saved,
  }) {
    return initialized?.call(intialPostOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Post> intialPostOption)? initialized,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int quantity)? quantityChanged,
    TResult Function(String title)? titleChanged,
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
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_QuantityChanged value) quantityChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_TitleChanged value)? titleChanged,
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
abstract class _$DescriptionChangedCopyWith<$Res> {
  factory _$DescriptionChangedCopyWith(
          _DescriptionChanged value, $Res Function(_DescriptionChanged) then) =
      __$DescriptionChangedCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class __$DescriptionChangedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res>
    implements _$DescriptionChangedCopyWith<$Res> {
  __$DescriptionChangedCopyWithImpl(
      _DescriptionChanged _value, $Res Function(_DescriptionChanged) _then)
      : super(_value, (v) => _then(v as _DescriptionChanged));

  @override
  _DescriptionChanged get _value => super._value as _DescriptionChanged;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_DescriptionChanged(
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'PostFormEvent.descriptionChanged(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DescriptionChanged &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      __$DescriptionChangedCopyWithImpl<_DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Post> intialPostOption) initialized,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(int quantity) quantityChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function() saved,
  }) {
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Post> intialPostOption)? initialized,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int quantity)? quantityChanged,
    TResult Function(String title)? titleChanged,
    TResult Function()? saved,
  }) {
    return descriptionChanged?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Post> intialPostOption)? initialized,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int quantity)? quantityChanged,
    TResult Function(String title)? titleChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_QuantityChanged value) quantityChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return descriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements PostFormEvent {
  const factory _DescriptionChanged(String description) = _$_DescriptionChanged;

  String get description;
  @JsonKey(ignore: true)
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QuantityChangedCopyWith<$Res> {
  factory _$QuantityChangedCopyWith(
          _QuantityChanged value, $Res Function(_QuantityChanged) then) =
      __$QuantityChangedCopyWithImpl<$Res>;
  $Res call({int quantity});
}

/// @nodoc
class __$QuantityChangedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res>
    implements _$QuantityChangedCopyWith<$Res> {
  __$QuantityChangedCopyWithImpl(
      _QuantityChanged _value, $Res Function(_QuantityChanged) _then)
      : super(_value, (v) => _then(v as _QuantityChanged));

  @override
  _QuantityChanged get _value => super._value as _QuantityChanged;

  @override
  $Res call({
    Object? quantity = freezed,
  }) {
    return _then(_QuantityChanged(
      quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_QuantityChanged implements _QuantityChanged {
  const _$_QuantityChanged(this.quantity);

  @override
  final int quantity;

  @override
  String toString() {
    return 'PostFormEvent.quantityChanged(quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuantityChanged &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$QuantityChangedCopyWith<_QuantityChanged> get copyWith =>
      __$QuantityChangedCopyWithImpl<_QuantityChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Post> intialPostOption) initialized,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(int quantity) quantityChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function() saved,
  }) {
    return quantityChanged(quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Post> intialPostOption)? initialized,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int quantity)? quantityChanged,
    TResult Function(String title)? titleChanged,
    TResult Function()? saved,
  }) {
    return quantityChanged?.call(quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Post> intialPostOption)? initialized,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int quantity)? quantityChanged,
    TResult Function(String title)? titleChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (quantityChanged != null) {
      return quantityChanged(quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_QuantityChanged value) quantityChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return quantityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return quantityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (quantityChanged != null) {
      return quantityChanged(this);
    }
    return orElse();
  }
}

abstract class _QuantityChanged implements PostFormEvent {
  const factory _QuantityChanged(int quantity) = _$_QuantityChanged;

  int get quantity;
  @JsonKey(ignore: true)
  _$QuantityChangedCopyWith<_QuantityChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TitleChangedCopyWith<$Res> {
  factory _$TitleChangedCopyWith(
          _TitleChanged value, $Res Function(_TitleChanged) then) =
      __$TitleChangedCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$TitleChangedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res>
    implements _$TitleChangedCopyWith<$Res> {
  __$TitleChangedCopyWithImpl(
      _TitleChanged _value, $Res Function(_TitleChanged) _then)
      : super(_value, (v) => _then(v as _TitleChanged));

  @override
  _TitleChanged get _value => super._value as _TitleChanged;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_TitleChanged(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'PostFormEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TitleChanged &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      __$TitleChangedCopyWithImpl<_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Post> intialPostOption) initialized,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(int quantity) quantityChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function() saved,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Post> intialPostOption)? initialized,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int quantity)? quantityChanged,
    TResult Function(String title)? titleChanged,
    TResult Function()? saved,
  }) {
    return titleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Post> intialPostOption)? initialized,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int quantity)? quantityChanged,
    TResult Function(String title)? titleChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_QuantityChanged value) quantityChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements PostFormEvent {
  const factory _TitleChanged(String title) = _$_TitleChanged;

  String get title;
  @JsonKey(ignore: true)
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
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
    required TResult Function(String description) descriptionChanged,
    required TResult Function(int quantity) quantityChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Post> intialPostOption)? initialized,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int quantity)? quantityChanged,
    TResult Function(String title)? titleChanged,
    TResult Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Post> intialPostOption)? initialized,
    TResult Function(String description)? descriptionChanged,
    TResult Function(int quantity)? quantityChanged,
    TResult Function(String title)? titleChanged,
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
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_QuantityChanged value) quantityChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_TitleChanged value)? titleChanged,
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
