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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Post> initialPostOption) initialized,
    required TResult Function(String amountChanged) amountChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String pickupTime) pickupTimeChanged,
    required TResult Function(int quantity) quantityChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(File? image) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Post> initialPostOption)? initialized,
    TResult Function(String amountChanged)? amountChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String pickupTime)? pickupTimeChanged,
    TResult Function(int quantity)? quantityChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(File? image)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Post> initialPostOption)? initialized,
    TResult Function(String amountChanged)? amountChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String pickupTime)? pickupTimeChanged,
    TResult Function(int quantity)? quantityChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(File? image)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(PickupTimeChanged value) pickupTimeChanged,
    required TResult Function(QuantityChanged value) quantityChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(PickupTimeChanged value)? pickupTimeChanged,
    TResult Function(QuantityChanged value)? quantityChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(PickupTimeChanged value)? pickupTimeChanged,
    TResult Function(QuantityChanged value)? quantityChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(Saved value)? saved,
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
abstract class _$$InitializedCopyWith<$Res> {
  factory _$$InitializedCopyWith(
          _$Initialized value, $Res Function(_$Initialized) then) =
      __$$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Post> initialPostOption});
}

/// @nodoc
class __$$InitializedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res>
    implements _$$InitializedCopyWith<$Res> {
  __$$InitializedCopyWithImpl(
      _$Initialized _value, $Res Function(_$Initialized) _then)
      : super(_value, (v) => _then(v as _$Initialized));

  @override
  _$Initialized get _value => super._value as _$Initialized;

  @override
  $Res call({
    Object? initialPostOption = freezed,
  }) {
    return _then(_$Initialized(
      initialPostOption == freezed
          ? _value.initialPostOption
          : initialPostOption // ignore: cast_nullable_to_non_nullable
              as Option<Post>,
    ));
  }
}

/// @nodoc

class _$Initialized implements Initialized {
  const _$Initialized(this.initialPostOption);

  @override
  final Option<Post> initialPostOption;

  @override
  String toString() {
    return 'PostFormEvent.initialized(initialPostOption: $initialPostOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initialized &&
            const DeepCollectionEquality()
                .equals(other.initialPostOption, initialPostOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(initialPostOption));

  @JsonKey(ignore: true)
  @override
  _$$InitializedCopyWith<_$Initialized> get copyWith =>
      __$$InitializedCopyWithImpl<_$Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Post> initialPostOption) initialized,
    required TResult Function(String amountChanged) amountChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String pickupTime) pickupTimeChanged,
    required TResult Function(int quantity) quantityChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(File? image) saved,
  }) {
    return initialized(initialPostOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Post> initialPostOption)? initialized,
    TResult Function(String amountChanged)? amountChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String pickupTime)? pickupTimeChanged,
    TResult Function(int quantity)? quantityChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(File? image)? saved,
  }) {
    return initialized?.call(initialPostOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Post> initialPostOption)? initialized,
    TResult Function(String amountChanged)? amountChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String pickupTime)? pickupTimeChanged,
    TResult Function(int quantity)? quantityChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(File? image)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialPostOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(PickupTimeChanged value) pickupTimeChanged,
    required TResult Function(QuantityChanged value) quantityChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(PickupTimeChanged value)? pickupTimeChanged,
    TResult Function(QuantityChanged value)? quantityChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(PickupTimeChanged value)? pickupTimeChanged,
    TResult Function(QuantityChanged value)? quantityChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements PostFormEvent {
  const factory Initialized(final Option<Post> initialPostOption) =
      _$Initialized;

  Option<Post> get initialPostOption => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$InitializedCopyWith<_$Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AmountChangedCopyWith<$Res> {
  factory _$$AmountChangedCopyWith(
          _$AmountChanged value, $Res Function(_$AmountChanged) then) =
      __$$AmountChangedCopyWithImpl<$Res>;
  $Res call({String amountChanged});
}

/// @nodoc
class __$$AmountChangedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res>
    implements _$$AmountChangedCopyWith<$Res> {
  __$$AmountChangedCopyWithImpl(
      _$AmountChanged _value, $Res Function(_$AmountChanged) _then)
      : super(_value, (v) => _then(v as _$AmountChanged));

  @override
  _$AmountChanged get _value => super._value as _$AmountChanged;

  @override
  $Res call({
    Object? amountChanged = freezed,
  }) {
    return _then(_$AmountChanged(
      amountChanged == freezed
          ? _value.amountChanged
          : amountChanged // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AmountChanged implements AmountChanged {
  const _$AmountChanged(this.amountChanged);

  @override
  final String amountChanged;

  @override
  String toString() {
    return 'PostFormEvent.amountChanged(amountChanged: $amountChanged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmountChanged &&
            const DeepCollectionEquality()
                .equals(other.amountChanged, amountChanged));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(amountChanged));

  @JsonKey(ignore: true)
  @override
  _$$AmountChangedCopyWith<_$AmountChanged> get copyWith =>
      __$$AmountChangedCopyWithImpl<_$AmountChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Post> initialPostOption) initialized,
    required TResult Function(String amountChanged) amountChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String pickupTime) pickupTimeChanged,
    required TResult Function(int quantity) quantityChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(File? image) saved,
  }) {
    return amountChanged(this.amountChanged);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Post> initialPostOption)? initialized,
    TResult Function(String amountChanged)? amountChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String pickupTime)? pickupTimeChanged,
    TResult Function(int quantity)? quantityChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(File? image)? saved,
  }) {
    return amountChanged?.call(this.amountChanged);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Post> initialPostOption)? initialized,
    TResult Function(String amountChanged)? amountChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String pickupTime)? pickupTimeChanged,
    TResult Function(int quantity)? quantityChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(File? image)? saved,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(this.amountChanged);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(PickupTimeChanged value) pickupTimeChanged,
    required TResult Function(QuantityChanged value) quantityChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(Saved value) saved,
  }) {
    return amountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(PickupTimeChanged value)? pickupTimeChanged,
    TResult Function(QuantityChanged value)? quantityChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(Saved value)? saved,
  }) {
    return amountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(PickupTimeChanged value)? pickupTimeChanged,
    TResult Function(QuantityChanged value)? quantityChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(this);
    }
    return orElse();
  }
}

abstract class AmountChanged implements PostFormEvent {
  const factory AmountChanged(final String amountChanged) = _$AmountChanged;

  String get amountChanged => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AmountChangedCopyWith<_$AmountChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DescriptionChangedCopyWith<$Res> {
  factory _$$DescriptionChangedCopyWith(_$DescriptionChanged value,
          $Res Function(_$DescriptionChanged) then) =
      __$$DescriptionChangedCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class __$$DescriptionChangedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res>
    implements _$$DescriptionChangedCopyWith<$Res> {
  __$$DescriptionChangedCopyWithImpl(
      _$DescriptionChanged _value, $Res Function(_$DescriptionChanged) _then)
      : super(_value, (v) => _then(v as _$DescriptionChanged));

  @override
  _$DescriptionChanged get _value => super._value as _$DescriptionChanged;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_$DescriptionChanged(
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DescriptionChanged implements DescriptionChanged {
  const _$DescriptionChanged(this.description);

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
            other is _$DescriptionChanged &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$DescriptionChangedCopyWith<_$DescriptionChanged> get copyWith =>
      __$$DescriptionChangedCopyWithImpl<_$DescriptionChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Post> initialPostOption) initialized,
    required TResult Function(String amountChanged) amountChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String pickupTime) pickupTimeChanged,
    required TResult Function(int quantity) quantityChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(File? image) saved,
  }) {
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Post> initialPostOption)? initialized,
    TResult Function(String amountChanged)? amountChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String pickupTime)? pickupTimeChanged,
    TResult Function(int quantity)? quantityChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(File? image)? saved,
  }) {
    return descriptionChanged?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Post> initialPostOption)? initialized,
    TResult Function(String amountChanged)? amountChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String pickupTime)? pickupTimeChanged,
    TResult Function(int quantity)? quantityChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(File? image)? saved,
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
    required TResult Function(Initialized value) initialized,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(PickupTimeChanged value) pickupTimeChanged,
    required TResult Function(QuantityChanged value) quantityChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(Saved value) saved,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(PickupTimeChanged value)? pickupTimeChanged,
    TResult Function(QuantityChanged value)? quantityChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(Saved value)? saved,
  }) {
    return descriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(PickupTimeChanged value)? pickupTimeChanged,
    TResult Function(QuantityChanged value)? quantityChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class DescriptionChanged implements PostFormEvent {
  const factory DescriptionChanged(final String description) =
      _$DescriptionChanged;

  String get description => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DescriptionChangedCopyWith<_$DescriptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickupTimeChangedCopyWith<$Res> {
  factory _$$PickupTimeChangedCopyWith(
          _$PickupTimeChanged value, $Res Function(_$PickupTimeChanged) then) =
      __$$PickupTimeChangedCopyWithImpl<$Res>;
  $Res call({String pickupTime});
}

/// @nodoc
class __$$PickupTimeChangedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res>
    implements _$$PickupTimeChangedCopyWith<$Res> {
  __$$PickupTimeChangedCopyWithImpl(
      _$PickupTimeChanged _value, $Res Function(_$PickupTimeChanged) _then)
      : super(_value, (v) => _then(v as _$PickupTimeChanged));

  @override
  _$PickupTimeChanged get _value => super._value as _$PickupTimeChanged;

  @override
  $Res call({
    Object? pickupTime = freezed,
  }) {
    return _then(_$PickupTimeChanged(
      pickupTime == freezed
          ? _value.pickupTime
          : pickupTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PickupTimeChanged implements PickupTimeChanged {
  const _$PickupTimeChanged(this.pickupTime);

  @override
  final String pickupTime;

  @override
  String toString() {
    return 'PostFormEvent.pickupTimeChanged(pickupTime: $pickupTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickupTimeChanged &&
            const DeepCollectionEquality()
                .equals(other.pickupTime, pickupTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pickupTime));

  @JsonKey(ignore: true)
  @override
  _$$PickupTimeChangedCopyWith<_$PickupTimeChanged> get copyWith =>
      __$$PickupTimeChangedCopyWithImpl<_$PickupTimeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Post> initialPostOption) initialized,
    required TResult Function(String amountChanged) amountChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String pickupTime) pickupTimeChanged,
    required TResult Function(int quantity) quantityChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(File? image) saved,
  }) {
    return pickupTimeChanged(pickupTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Post> initialPostOption)? initialized,
    TResult Function(String amountChanged)? amountChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String pickupTime)? pickupTimeChanged,
    TResult Function(int quantity)? quantityChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(File? image)? saved,
  }) {
    return pickupTimeChanged?.call(pickupTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Post> initialPostOption)? initialized,
    TResult Function(String amountChanged)? amountChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String pickupTime)? pickupTimeChanged,
    TResult Function(int quantity)? quantityChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(File? image)? saved,
    required TResult orElse(),
  }) {
    if (pickupTimeChanged != null) {
      return pickupTimeChanged(pickupTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(PickupTimeChanged value) pickupTimeChanged,
    required TResult Function(QuantityChanged value) quantityChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(Saved value) saved,
  }) {
    return pickupTimeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(PickupTimeChanged value)? pickupTimeChanged,
    TResult Function(QuantityChanged value)? quantityChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(Saved value)? saved,
  }) {
    return pickupTimeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(PickupTimeChanged value)? pickupTimeChanged,
    TResult Function(QuantityChanged value)? quantityChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (pickupTimeChanged != null) {
      return pickupTimeChanged(this);
    }
    return orElse();
  }
}

abstract class PickupTimeChanged implements PostFormEvent {
  const factory PickupTimeChanged(final String pickupTime) =
      _$PickupTimeChanged;

  String get pickupTime => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$PickupTimeChangedCopyWith<_$PickupTimeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuantityChangedCopyWith<$Res> {
  factory _$$QuantityChangedCopyWith(
          _$QuantityChanged value, $Res Function(_$QuantityChanged) then) =
      __$$QuantityChangedCopyWithImpl<$Res>;
  $Res call({int quantity});
}

/// @nodoc
class __$$QuantityChangedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res>
    implements _$$QuantityChangedCopyWith<$Res> {
  __$$QuantityChangedCopyWithImpl(
      _$QuantityChanged _value, $Res Function(_$QuantityChanged) _then)
      : super(_value, (v) => _then(v as _$QuantityChanged));

  @override
  _$QuantityChanged get _value => super._value as _$QuantityChanged;

  @override
  $Res call({
    Object? quantity = freezed,
  }) {
    return _then(_$QuantityChanged(
      quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$QuantityChanged implements QuantityChanged {
  const _$QuantityChanged(this.quantity);

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
            other is _$QuantityChanged &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$$QuantityChangedCopyWith<_$QuantityChanged> get copyWith =>
      __$$QuantityChangedCopyWithImpl<_$QuantityChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Post> initialPostOption) initialized,
    required TResult Function(String amountChanged) amountChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String pickupTime) pickupTimeChanged,
    required TResult Function(int quantity) quantityChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(File? image) saved,
  }) {
    return quantityChanged(quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Post> initialPostOption)? initialized,
    TResult Function(String amountChanged)? amountChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String pickupTime)? pickupTimeChanged,
    TResult Function(int quantity)? quantityChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(File? image)? saved,
  }) {
    return quantityChanged?.call(quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Post> initialPostOption)? initialized,
    TResult Function(String amountChanged)? amountChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String pickupTime)? pickupTimeChanged,
    TResult Function(int quantity)? quantityChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(File? image)? saved,
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
    required TResult Function(Initialized value) initialized,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(PickupTimeChanged value) pickupTimeChanged,
    required TResult Function(QuantityChanged value) quantityChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(Saved value) saved,
  }) {
    return quantityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(PickupTimeChanged value)? pickupTimeChanged,
    TResult Function(QuantityChanged value)? quantityChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(Saved value)? saved,
  }) {
    return quantityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(PickupTimeChanged value)? pickupTimeChanged,
    TResult Function(QuantityChanged value)? quantityChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (quantityChanged != null) {
      return quantityChanged(this);
    }
    return orElse();
  }
}

abstract class QuantityChanged implements PostFormEvent {
  const factory QuantityChanged(final int quantity) = _$QuantityChanged;

  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$QuantityChangedCopyWith<_$QuantityChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TitleChangedCopyWith<$Res> {
  factory _$$TitleChangedCopyWith(
          _$TitleChanged value, $Res Function(_$TitleChanged) then) =
      __$$TitleChangedCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$$TitleChangedCopyWithImpl<$Res>
    extends _$PostFormEventCopyWithImpl<$Res>
    implements _$$TitleChangedCopyWith<$Res> {
  __$$TitleChangedCopyWithImpl(
      _$TitleChanged _value, $Res Function(_$TitleChanged) _then)
      : super(_value, (v) => _then(v as _$TitleChanged));

  @override
  _$TitleChanged get _value => super._value as _$TitleChanged;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_$TitleChanged(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TitleChanged implements TitleChanged {
  const _$TitleChanged(this.title);

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
            other is _$TitleChanged &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$TitleChangedCopyWith<_$TitleChanged> get copyWith =>
      __$$TitleChangedCopyWithImpl<_$TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Post> initialPostOption) initialized,
    required TResult Function(String amountChanged) amountChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String pickupTime) pickupTimeChanged,
    required TResult Function(int quantity) quantityChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(File? image) saved,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Post> initialPostOption)? initialized,
    TResult Function(String amountChanged)? amountChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String pickupTime)? pickupTimeChanged,
    TResult Function(int quantity)? quantityChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(File? image)? saved,
  }) {
    return titleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Post> initialPostOption)? initialized,
    TResult Function(String amountChanged)? amountChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String pickupTime)? pickupTimeChanged,
    TResult Function(int quantity)? quantityChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(File? image)? saved,
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
    required TResult Function(Initialized value) initialized,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(PickupTimeChanged value) pickupTimeChanged,
    required TResult Function(QuantityChanged value) quantityChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(Saved value) saved,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(PickupTimeChanged value)? pickupTimeChanged,
    TResult Function(QuantityChanged value)? quantityChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(Saved value)? saved,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(PickupTimeChanged value)? pickupTimeChanged,
    TResult Function(QuantityChanged value)? quantityChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class TitleChanged implements PostFormEvent {
  const factory TitleChanged(final String title) = _$TitleChanged;

  String get title => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TitleChangedCopyWith<_$TitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedCopyWith<$Res> {
  factory _$$SavedCopyWith(_$Saved value, $Res Function(_$Saved) then) =
      __$$SavedCopyWithImpl<$Res>;
  $Res call({File? image});
}

/// @nodoc
class __$$SavedCopyWithImpl<$Res> extends _$PostFormEventCopyWithImpl<$Res>
    implements _$$SavedCopyWith<$Res> {
  __$$SavedCopyWithImpl(_$Saved _value, $Res Function(_$Saved) _then)
      : super(_value, (v) => _then(v as _$Saved));

  @override
  _$Saved get _value => super._value as _$Saved;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$Saved(
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$Saved implements Saved {
  const _$Saved(this.image);

  @override
  final File? image;

  @override
  String toString() {
    return 'PostFormEvent.saved(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Saved &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$SavedCopyWith<_$Saved> get copyWith =>
      __$$SavedCopyWithImpl<_$Saved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Post> initialPostOption) initialized,
    required TResult Function(String amountChanged) amountChanged,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(String pickupTime) pickupTimeChanged,
    required TResult Function(int quantity) quantityChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(File? image) saved,
  }) {
    return saved(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Post> initialPostOption)? initialized,
    TResult Function(String amountChanged)? amountChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String pickupTime)? pickupTimeChanged,
    TResult Function(int quantity)? quantityChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(File? image)? saved,
  }) {
    return saved?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Post> initialPostOption)? initialized,
    TResult Function(String amountChanged)? amountChanged,
    TResult Function(String description)? descriptionChanged,
    TResult Function(String pickupTime)? pickupTimeChanged,
    TResult Function(int quantity)? quantityChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(File? image)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(DescriptionChanged value) descriptionChanged,
    required TResult Function(PickupTimeChanged value) pickupTimeChanged,
    required TResult Function(QuantityChanged value) quantityChanged,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(PickupTimeChanged value)? pickupTimeChanged,
    TResult Function(QuantityChanged value)? quantityChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(DescriptionChanged value)? descriptionChanged,
    TResult Function(PickupTimeChanged value)? pickupTimeChanged,
    TResult Function(QuantityChanged value)? quantityChanged,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class Saved implements PostFormEvent {
  const factory Saved(final File? image) = _$Saved;

  File? get image => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SavedCopyWith<_$Saved> get copyWith => throw _privateConstructorUsedError;
}

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
abstract class _$$_PostFormStateCopyWith<$Res>
    implements $PostFormStateCopyWith<$Res> {
  factory _$$_PostFormStateCopyWith(
          _$_PostFormState value, $Res Function(_$_PostFormState) then) =
      __$$_PostFormStateCopyWithImpl<$Res>;
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
class __$$_PostFormStateCopyWithImpl<$Res>
    extends _$PostFormStateCopyWithImpl<$Res>
    implements _$$_PostFormStateCopyWith<$Res> {
  __$$_PostFormStateCopyWithImpl(
      _$_PostFormState _value, $Res Function(_$_PostFormState) _then)
      : super(_value, (v) => _then(v as _$_PostFormState));

  @override
  _$_PostFormState get _value => super._value as _$_PostFormState;

  @override
  $Res call({
    Object? post = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? isEditing = freezed,
    Object? successOrFailure = freezed,
  }) {
    return _then(_$_PostFormState(
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
            other is _$_PostFormState &&
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
  _$$_PostFormStateCopyWith<_$_PostFormState> get copyWith =>
      __$$_PostFormStateCopyWithImpl<_$_PostFormState>(this, _$identity);
}

abstract class _PostFormState implements PostFormState {
  const factory _PostFormState(
          {required final Post post,
          required final bool showErrorMessages,
          required final bool isSaving,
          required final bool isEditing,
          required final Option<Either<PostFailure, Unit>> successOrFailure}) =
      _$_PostFormState;

  @override
  Post get post => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  Option<Either<PostFailure, Unit>> get successOrFailure =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PostFormStateCopyWith<_$_PostFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
