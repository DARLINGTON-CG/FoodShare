// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInFormEventTearOff {
  const _$SignInFormEventTearOff();

  EmailChanged emailChanged(String emailString) {
    return EmailChanged(
      emailString,
    );
  }

  PasswordChanged passwordChanged(String passwordString) {
    return PasswordChanged(
      passwordString,
    );
  }

  RegisterWithEmailAndPasswordPressed registerWithEmailAndPasswordPressed(
      String emailString) {
    return RegisterWithEmailAndPasswordPressed(
      emailString,
    );
  }

  SignInWithEmailAndPasswordPressed signInWithEmailAndPasswordPressed(
      String emailString) {
    return SignInWithEmailAndPasswordPressed(
      emailString,
    );
  }
}

/// @nodoc
const $SignInFormEvent = _$SignInFormEventTearOff();

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String emailString)
        registerWithEmailAndPasswordPressed,
    required TResult Function(String emailString)
        signInWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String emailString)? registerWithEmailAndPasswordPressed,
    TResult Function(String emailString)? signInWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String emailString)? registerWithEmailAndPasswordPressed,
    TResult Function(String emailString)? signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  final SignInFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFormEvent) _then;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailString});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object? emailString = freezed,
  }) {
    return _then(EmailChanged(
      emailString == freezed
          ? _value.emailString
          : emailString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailString);

  @override
  final String emailString;

  @override
  String toString() {
    return 'SignInFormEvent.emailChanged(emailString: $emailString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailChanged &&
            const DeepCollectionEquality()
                .equals(other.emailString, emailString));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(emailString));

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String emailString)
        registerWithEmailAndPasswordPressed,
    required TResult Function(String emailString)
        signInWithEmailAndPasswordPressed,
  }) {
    return emailChanged(emailString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String emailString)? registerWithEmailAndPasswordPressed,
    TResult Function(String emailString)? signInWithEmailAndPasswordPressed,
  }) {
    return emailChanged?.call(emailString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String emailString)? registerWithEmailAndPasswordPressed,
    TResult Function(String emailString)? signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignInFormEvent {
  const factory EmailChanged(String emailString) = _$EmailChanged;

  String get emailString;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordString});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object? passwordString = freezed,
  }) {
    return _then(PasswordChanged(
      passwordString == freezed
          ? _value.passwordString
          : passwordString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordString);

  @override
  final String passwordString;

  @override
  String toString() {
    return 'SignInFormEvent.passwordChanged(passwordString: $passwordString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasswordChanged &&
            const DeepCollectionEquality()
                .equals(other.passwordString, passwordString));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(passwordString));

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String emailString)
        registerWithEmailAndPasswordPressed,
    required TResult Function(String emailString)
        signInWithEmailAndPasswordPressed,
  }) {
    return passwordChanged(passwordString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String emailString)? registerWithEmailAndPasswordPressed,
    TResult Function(String emailString)? signInWithEmailAndPasswordPressed,
  }) {
    return passwordChanged?.call(passwordString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String emailString)? registerWithEmailAndPasswordPressed,
    TResult Function(String emailString)? signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInFormEvent {
  const factory PasswordChanged(String passwordString) = _$PasswordChanged;

  String get passwordString;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $RegisterWithEmailAndPasswordPressedCopyWith(
          RegisterWithEmailAndPasswordPressed value,
          $Res Function(RegisterWithEmailAndPasswordPressed) then) =
      _$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>;
  $Res call({String emailString});
}

/// @nodoc
class _$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  _$RegisterWithEmailAndPasswordPressedCopyWithImpl(
      RegisterWithEmailAndPasswordPressed _value,
      $Res Function(RegisterWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as RegisterWithEmailAndPasswordPressed));

  @override
  RegisterWithEmailAndPasswordPressed get _value =>
      super._value as RegisterWithEmailAndPasswordPressed;

  @override
  $Res call({
    Object? emailString = freezed,
  }) {
    return _then(RegisterWithEmailAndPasswordPressed(
      emailString == freezed
          ? _value.emailString
          : emailString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterWithEmailAndPasswordPressed
    implements RegisterWithEmailAndPasswordPressed {
  const _$RegisterWithEmailAndPasswordPressed(this.emailString);

  @override
  final String emailString;

  @override
  String toString() {
    return 'SignInFormEvent.registerWithEmailAndPasswordPressed(emailString: $emailString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterWithEmailAndPasswordPressed &&
            const DeepCollectionEquality()
                .equals(other.emailString, emailString));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(emailString));

  @JsonKey(ignore: true)
  @override
  $RegisterWithEmailAndPasswordPressedCopyWith<
          RegisterWithEmailAndPasswordPressed>
      get copyWith => _$RegisterWithEmailAndPasswordPressedCopyWithImpl<
          RegisterWithEmailAndPasswordPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String emailString)
        registerWithEmailAndPasswordPressed,
    required TResult Function(String emailString)
        signInWithEmailAndPasswordPressed,
  }) {
    return registerWithEmailAndPasswordPressed(emailString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String emailString)? registerWithEmailAndPasswordPressed,
    TResult Function(String emailString)? signInWithEmailAndPasswordPressed,
  }) {
    return registerWithEmailAndPasswordPressed?.call(emailString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String emailString)? registerWithEmailAndPasswordPressed,
    TResult Function(String emailString)? signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(emailString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
  }) {
    return registerWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
  }) {
    return registerWithEmailAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPasswordPressed implements SignInFormEvent {
  const factory RegisterWithEmailAndPasswordPressed(String emailString) =
      _$RegisterWithEmailAndPasswordPressed;

  String get emailString;
  @JsonKey(ignore: true)
  $RegisterWithEmailAndPasswordPressedCopyWith<
          RegisterWithEmailAndPasswordPressed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $SignInWithEmailAndPasswordPressedCopyWith(
          SignInWithEmailAndPasswordPressed value,
          $Res Function(SignInWithEmailAndPasswordPressed) then) =
      _$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>;
  $Res call({String emailString});
}

/// @nodoc
class _$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  _$SignInWithEmailAndPasswordPressedCopyWithImpl(
      SignInWithEmailAndPasswordPressed _value,
      $Res Function(SignInWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as SignInWithEmailAndPasswordPressed));

  @override
  SignInWithEmailAndPasswordPressed get _value =>
      super._value as SignInWithEmailAndPasswordPressed;

  @override
  $Res call({
    Object? emailString = freezed,
  }) {
    return _then(SignInWithEmailAndPasswordPressed(
      emailString == freezed
          ? _value.emailString
          : emailString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInWithEmailAndPasswordPressed
    implements SignInWithEmailAndPasswordPressed {
  const _$SignInWithEmailAndPasswordPressed(this.emailString);

  @override
  final String emailString;

  @override
  String toString() {
    return 'SignInFormEvent.signInWithEmailAndPasswordPressed(emailString: $emailString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInWithEmailAndPasswordPressed &&
            const DeepCollectionEquality()
                .equals(other.emailString, emailString));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(emailString));

  @JsonKey(ignore: true)
  @override
  $SignInWithEmailAndPasswordPressedCopyWith<SignInWithEmailAndPasswordPressed>
      get copyWith => _$SignInWithEmailAndPasswordPressedCopyWithImpl<
          SignInWithEmailAndPasswordPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String emailString)
        registerWithEmailAndPasswordPressed,
    required TResult Function(String emailString)
        signInWithEmailAndPasswordPressed,
  }) {
    return signInWithEmailAndPasswordPressed(emailString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String emailString)? registerWithEmailAndPasswordPressed,
    TResult Function(String emailString)? signInWithEmailAndPasswordPressed,
  }) {
    return signInWithEmailAndPasswordPressed?.call(emailString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String emailString)? registerWithEmailAndPasswordPressed,
    TResult Function(String emailString)? signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed(emailString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
  }) {
    return signInWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
  }) {
    return signInWithEmailAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPasswordPressed implements SignInFormEvent {
  const factory SignInWithEmailAndPasswordPressed(String emailString) =
      _$SignInWithEmailAndPasswordPressed;

  String get emailString;
  @JsonKey(ignore: true)
  $SignInWithEmailAndPasswordPressedCopyWith<SignInWithEmailAndPasswordPressed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

  _SignInFormState call(
      {required EmailAddress emailAddress,
      required Password password,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _SignInFormState(
      emailAddress: emailAddress,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $SignInFormState = _$SignInFormStateTearOff();

/// @nodoc
mixin _$SignInFormState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignInFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignInFormState implements _SignInFormState {
  _$_SignInFormState(
      {required this.emailAddress,
      required this.password,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInFormState(emailAddress: $emailAddress, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInFormState &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality().equals(
                other.authFailureOrSuccessOption, authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(authFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  factory _SignInFormState(
      {required EmailAddress emailAddress,
      required Password password,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_SignInFormState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
