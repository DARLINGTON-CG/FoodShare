// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentEvents {
  int get paymentAmount => throw _privateConstructorUsedError;
  String get sourceWalletId => throw _privateConstructorUsedError;
  String get destinationWalletId => throw _privateConstructorUsedError;
  ChatRoom get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int paymentAmount, String sourceWalletId,
            String destinationWalletId, ChatRoom data)
        performTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int paymentAmount, String sourceWalletId,
            String destinationWalletId, ChatRoom data)?
        performTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int paymentAmount, String sourceWalletId,
            String destinationWalletId, ChatRoom data)?
        performTransaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PerformTransaction value) performTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PerformTransaction value)? performTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PerformTransaction value)? performTransaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentEventsCopyWith<PaymentEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEventsCopyWith<$Res> {
  factory $PaymentEventsCopyWith(
          PaymentEvents value, $Res Function(PaymentEvents) then) =
      _$PaymentEventsCopyWithImpl<$Res>;
  $Res call(
      {int paymentAmount,
      String sourceWalletId,
      String destinationWalletId,
      ChatRoom data});

  $ChatRoomCopyWith<$Res> get data;
}

/// @nodoc
class _$PaymentEventsCopyWithImpl<$Res>
    implements $PaymentEventsCopyWith<$Res> {
  _$PaymentEventsCopyWithImpl(this._value, this._then);

  final PaymentEvents _value;
  // ignore: unused_field
  final $Res Function(PaymentEvents) _then;

  @override
  $Res call({
    Object? paymentAmount = freezed,
    Object? sourceWalletId = freezed,
    Object? destinationWalletId = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      paymentAmount: paymentAmount == freezed
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as int,
      sourceWalletId: sourceWalletId == freezed
          ? _value.sourceWalletId
          : sourceWalletId // ignore: cast_nullable_to_non_nullable
              as String,
      destinationWalletId: destinationWalletId == freezed
          ? _value.destinationWalletId
          : destinationWalletId // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatRoom,
    ));
  }

  @override
  $ChatRoomCopyWith<$Res> get data {
    return $ChatRoomCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$PerformTransactionCopyWith<$Res>
    implements $PaymentEventsCopyWith<$Res> {
  factory _$$PerformTransactionCopyWith(_$PerformTransaction value,
          $Res Function(_$PerformTransaction) then) =
      __$$PerformTransactionCopyWithImpl<$Res>;
  @override
  $Res call(
      {int paymentAmount,
      String sourceWalletId,
      String destinationWalletId,
      ChatRoom data});

  @override
  $ChatRoomCopyWith<$Res> get data;
}

/// @nodoc
class __$$PerformTransactionCopyWithImpl<$Res>
    extends _$PaymentEventsCopyWithImpl<$Res>
    implements _$$PerformTransactionCopyWith<$Res> {
  __$$PerformTransactionCopyWithImpl(
      _$PerformTransaction _value, $Res Function(_$PerformTransaction) _then)
      : super(_value, (v) => _then(v as _$PerformTransaction));

  @override
  _$PerformTransaction get _value => super._value as _$PerformTransaction;

  @override
  $Res call({
    Object? paymentAmount = freezed,
    Object? sourceWalletId = freezed,
    Object? destinationWalletId = freezed,
    Object? data = freezed,
  }) {
    return _then(_$PerformTransaction(
      paymentAmount == freezed
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as int,
      sourceWalletId == freezed
          ? _value.sourceWalletId
          : sourceWalletId // ignore: cast_nullable_to_non_nullable
              as String,
      destinationWalletId == freezed
          ? _value.destinationWalletId
          : destinationWalletId // ignore: cast_nullable_to_non_nullable
              as String,
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChatRoom,
    ));
  }
}

/// @nodoc

class _$PerformTransaction implements PerformTransaction {
  _$PerformTransaction(this.paymentAmount, this.sourceWalletId,
      this.destinationWalletId, this.data);

  @override
  final int paymentAmount;
  @override
  final String sourceWalletId;
  @override
  final String destinationWalletId;
  @override
  final ChatRoom data;

  @override
  String toString() {
    return 'PaymentEvents.performTransaction(paymentAmount: $paymentAmount, sourceWalletId: $sourceWalletId, destinationWalletId: $destinationWalletId, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformTransaction &&
            const DeepCollectionEquality()
                .equals(other.paymentAmount, paymentAmount) &&
            const DeepCollectionEquality()
                .equals(other.sourceWalletId, sourceWalletId) &&
            const DeepCollectionEquality()
                .equals(other.destinationWalletId, destinationWalletId) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(paymentAmount),
      const DeepCollectionEquality().hash(sourceWalletId),
      const DeepCollectionEquality().hash(destinationWalletId),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$PerformTransactionCopyWith<_$PerformTransaction> get copyWith =>
      __$$PerformTransactionCopyWithImpl<_$PerformTransaction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int paymentAmount, String sourceWalletId,
            String destinationWalletId, ChatRoom data)
        performTransaction,
  }) {
    return performTransaction(
        paymentAmount, sourceWalletId, destinationWalletId, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int paymentAmount, String sourceWalletId,
            String destinationWalletId, ChatRoom data)?
        performTransaction,
  }) {
    return performTransaction?.call(
        paymentAmount, sourceWalletId, destinationWalletId, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int paymentAmount, String sourceWalletId,
            String destinationWalletId, ChatRoom data)?
        performTransaction,
    required TResult orElse(),
  }) {
    if (performTransaction != null) {
      return performTransaction(
          paymentAmount, sourceWalletId, destinationWalletId, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PerformTransaction value) performTransaction,
  }) {
    return performTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PerformTransaction value)? performTransaction,
  }) {
    return performTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PerformTransaction value)? performTransaction,
    required TResult orElse(),
  }) {
    if (performTransaction != null) {
      return performTransaction(this);
    }
    return orElse();
  }
}

abstract class PerformTransaction implements PaymentEvents {
  factory PerformTransaction(
      final int paymentAmount,
      final String sourceWalletId,
      final String destinationWalletId,
      final ChatRoom data) = _$PerformTransaction;

  @override
  int get paymentAmount => throw _privateConstructorUsedError;
  @override
  String get sourceWalletId => throw _privateConstructorUsedError;
  @override
  String get destinationWalletId => throw _privateConstructorUsedError;
  @override
  ChatRoom get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$PerformTransactionCopyWith<_$PerformTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processingPayment,
    required TResult Function() paymentError,
    required TResult Function() messageError,
    required TResult Function() verifyPayment,
    required TResult Function() sendingCompletedMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processingPayment,
    TResult Function()? paymentError,
    TResult Function()? messageError,
    TResult Function()? verifyPayment,
    TResult Function()? sendingCompletedMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processingPayment,
    TResult Function()? paymentError,
    TResult Function()? messageError,
    TResult Function()? verifyPayment,
    TResult Function()? sendingCompletedMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initital value) initial,
    required TResult Function(ProcessingPayment value) processingPayment,
    required TResult Function(PaymentError value) paymentError,
    required TResult Function(MessageError value) messageError,
    required TResult Function(VerifyPayment value) verifyPayment,
    required TResult Function(SendingCompletedMessage value)
        sendingCompletedMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(ProcessingPayment value)? processingPayment,
    TResult Function(PaymentError value)? paymentError,
    TResult Function(MessageError value)? messageError,
    TResult Function(VerifyPayment value)? verifyPayment,
    TResult Function(SendingCompletedMessage value)? sendingCompletedMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(ProcessingPayment value)? processingPayment,
    TResult Function(PaymentError value)? paymentError,
    TResult Function(MessageError value)? messageError,
    TResult Function(VerifyPayment value)? verifyPayment,
    TResult Function(SendingCompletedMessage value)? sendingCompletedMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStatesCopyWith<$Res> {
  factory $PaymentStatesCopyWith(
          PaymentStates value, $Res Function(PaymentStates) then) =
      _$PaymentStatesCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentStatesCopyWithImpl<$Res>
    implements $PaymentStatesCopyWith<$Res> {
  _$PaymentStatesCopyWithImpl(this._value, this._then);

  final PaymentStates _value;
  // ignore: unused_field
  final $Res Function(PaymentStates) _then;
}

/// @nodoc
abstract class _$$InititalCopyWith<$Res> {
  factory _$$InititalCopyWith(
          _$Initital value, $Res Function(_$Initital) then) =
      __$$InititalCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InititalCopyWithImpl<$Res> extends _$PaymentStatesCopyWithImpl<$Res>
    implements _$$InititalCopyWith<$Res> {
  __$$InititalCopyWithImpl(_$Initital _value, $Res Function(_$Initital) _then)
      : super(_value, (v) => _then(v as _$Initital));

  @override
  _$Initital get _value => super._value as _$Initital;
}

/// @nodoc

class _$Initital implements Initital {
  _$Initital();

  @override
  String toString() {
    return 'PaymentStates.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initital);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processingPayment,
    required TResult Function() paymentError,
    required TResult Function() messageError,
    required TResult Function() verifyPayment,
    required TResult Function() sendingCompletedMessage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processingPayment,
    TResult Function()? paymentError,
    TResult Function()? messageError,
    TResult Function()? verifyPayment,
    TResult Function()? sendingCompletedMessage,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processingPayment,
    TResult Function()? paymentError,
    TResult Function()? messageError,
    TResult Function()? verifyPayment,
    TResult Function()? sendingCompletedMessage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initital value) initial,
    required TResult Function(ProcessingPayment value) processingPayment,
    required TResult Function(PaymentError value) paymentError,
    required TResult Function(MessageError value) messageError,
    required TResult Function(VerifyPayment value) verifyPayment,
    required TResult Function(SendingCompletedMessage value)
        sendingCompletedMessage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(ProcessingPayment value)? processingPayment,
    TResult Function(PaymentError value)? paymentError,
    TResult Function(MessageError value)? messageError,
    TResult Function(VerifyPayment value)? verifyPayment,
    TResult Function(SendingCompletedMessage value)? sendingCompletedMessage,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(ProcessingPayment value)? processingPayment,
    TResult Function(PaymentError value)? paymentError,
    TResult Function(MessageError value)? messageError,
    TResult Function(VerifyPayment value)? verifyPayment,
    TResult Function(SendingCompletedMessage value)? sendingCompletedMessage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initital implements PaymentStates {
  factory Initital() = _$Initital;
}

/// @nodoc
abstract class _$$ProcessingPaymentCopyWith<$Res> {
  factory _$$ProcessingPaymentCopyWith(
          _$ProcessingPayment value, $Res Function(_$ProcessingPayment) then) =
      __$$ProcessingPaymentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProcessingPaymentCopyWithImpl<$Res>
    extends _$PaymentStatesCopyWithImpl<$Res>
    implements _$$ProcessingPaymentCopyWith<$Res> {
  __$$ProcessingPaymentCopyWithImpl(
      _$ProcessingPayment _value, $Res Function(_$ProcessingPayment) _then)
      : super(_value, (v) => _then(v as _$ProcessingPayment));

  @override
  _$ProcessingPayment get _value => super._value as _$ProcessingPayment;
}

/// @nodoc

class _$ProcessingPayment implements ProcessingPayment {
  _$ProcessingPayment();

  @override
  String toString() {
    return 'PaymentStates.processingPayment()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProcessingPayment);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processingPayment,
    required TResult Function() paymentError,
    required TResult Function() messageError,
    required TResult Function() verifyPayment,
    required TResult Function() sendingCompletedMessage,
  }) {
    return processingPayment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processingPayment,
    TResult Function()? paymentError,
    TResult Function()? messageError,
    TResult Function()? verifyPayment,
    TResult Function()? sendingCompletedMessage,
  }) {
    return processingPayment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processingPayment,
    TResult Function()? paymentError,
    TResult Function()? messageError,
    TResult Function()? verifyPayment,
    TResult Function()? sendingCompletedMessage,
    required TResult orElse(),
  }) {
    if (processingPayment != null) {
      return processingPayment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initital value) initial,
    required TResult Function(ProcessingPayment value) processingPayment,
    required TResult Function(PaymentError value) paymentError,
    required TResult Function(MessageError value) messageError,
    required TResult Function(VerifyPayment value) verifyPayment,
    required TResult Function(SendingCompletedMessage value)
        sendingCompletedMessage,
  }) {
    return processingPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(ProcessingPayment value)? processingPayment,
    TResult Function(PaymentError value)? paymentError,
    TResult Function(MessageError value)? messageError,
    TResult Function(VerifyPayment value)? verifyPayment,
    TResult Function(SendingCompletedMessage value)? sendingCompletedMessage,
  }) {
    return processingPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(ProcessingPayment value)? processingPayment,
    TResult Function(PaymentError value)? paymentError,
    TResult Function(MessageError value)? messageError,
    TResult Function(VerifyPayment value)? verifyPayment,
    TResult Function(SendingCompletedMessage value)? sendingCompletedMessage,
    required TResult orElse(),
  }) {
    if (processingPayment != null) {
      return processingPayment(this);
    }
    return orElse();
  }
}

abstract class ProcessingPayment implements PaymentStates {
  factory ProcessingPayment() = _$ProcessingPayment;
}

/// @nodoc
abstract class _$$PaymentErrorCopyWith<$Res> {
  factory _$$PaymentErrorCopyWith(
          _$PaymentError value, $Res Function(_$PaymentError) then) =
      __$$PaymentErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentErrorCopyWithImpl<$Res>
    extends _$PaymentStatesCopyWithImpl<$Res>
    implements _$$PaymentErrorCopyWith<$Res> {
  __$$PaymentErrorCopyWithImpl(
      _$PaymentError _value, $Res Function(_$PaymentError) _then)
      : super(_value, (v) => _then(v as _$PaymentError));

  @override
  _$PaymentError get _value => super._value as _$PaymentError;
}

/// @nodoc

class _$PaymentError implements PaymentError {
  _$PaymentError();

  @override
  String toString() {
    return 'PaymentStates.paymentError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processingPayment,
    required TResult Function() paymentError,
    required TResult Function() messageError,
    required TResult Function() verifyPayment,
    required TResult Function() sendingCompletedMessage,
  }) {
    return paymentError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processingPayment,
    TResult Function()? paymentError,
    TResult Function()? messageError,
    TResult Function()? verifyPayment,
    TResult Function()? sendingCompletedMessage,
  }) {
    return paymentError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processingPayment,
    TResult Function()? paymentError,
    TResult Function()? messageError,
    TResult Function()? verifyPayment,
    TResult Function()? sendingCompletedMessage,
    required TResult orElse(),
  }) {
    if (paymentError != null) {
      return paymentError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initital value) initial,
    required TResult Function(ProcessingPayment value) processingPayment,
    required TResult Function(PaymentError value) paymentError,
    required TResult Function(MessageError value) messageError,
    required TResult Function(VerifyPayment value) verifyPayment,
    required TResult Function(SendingCompletedMessage value)
        sendingCompletedMessage,
  }) {
    return paymentError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(ProcessingPayment value)? processingPayment,
    TResult Function(PaymentError value)? paymentError,
    TResult Function(MessageError value)? messageError,
    TResult Function(VerifyPayment value)? verifyPayment,
    TResult Function(SendingCompletedMessage value)? sendingCompletedMessage,
  }) {
    return paymentError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(ProcessingPayment value)? processingPayment,
    TResult Function(PaymentError value)? paymentError,
    TResult Function(MessageError value)? messageError,
    TResult Function(VerifyPayment value)? verifyPayment,
    TResult Function(SendingCompletedMessage value)? sendingCompletedMessage,
    required TResult orElse(),
  }) {
    if (paymentError != null) {
      return paymentError(this);
    }
    return orElse();
  }
}

abstract class PaymentError implements PaymentStates {
  factory PaymentError() = _$PaymentError;
}

/// @nodoc
abstract class _$$MessageErrorCopyWith<$Res> {
  factory _$$MessageErrorCopyWith(
          _$MessageError value, $Res Function(_$MessageError) then) =
      __$$MessageErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MessageErrorCopyWithImpl<$Res>
    extends _$PaymentStatesCopyWithImpl<$Res>
    implements _$$MessageErrorCopyWith<$Res> {
  __$$MessageErrorCopyWithImpl(
      _$MessageError _value, $Res Function(_$MessageError) _then)
      : super(_value, (v) => _then(v as _$MessageError));

  @override
  _$MessageError get _value => super._value as _$MessageError;
}

/// @nodoc

class _$MessageError implements MessageError {
  _$MessageError();

  @override
  String toString() {
    return 'PaymentStates.messageError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MessageError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processingPayment,
    required TResult Function() paymentError,
    required TResult Function() messageError,
    required TResult Function() verifyPayment,
    required TResult Function() sendingCompletedMessage,
  }) {
    return messageError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processingPayment,
    TResult Function()? paymentError,
    TResult Function()? messageError,
    TResult Function()? verifyPayment,
    TResult Function()? sendingCompletedMessage,
  }) {
    return messageError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processingPayment,
    TResult Function()? paymentError,
    TResult Function()? messageError,
    TResult Function()? verifyPayment,
    TResult Function()? sendingCompletedMessage,
    required TResult orElse(),
  }) {
    if (messageError != null) {
      return messageError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initital value) initial,
    required TResult Function(ProcessingPayment value) processingPayment,
    required TResult Function(PaymentError value) paymentError,
    required TResult Function(MessageError value) messageError,
    required TResult Function(VerifyPayment value) verifyPayment,
    required TResult Function(SendingCompletedMessage value)
        sendingCompletedMessage,
  }) {
    return messageError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(ProcessingPayment value)? processingPayment,
    TResult Function(PaymentError value)? paymentError,
    TResult Function(MessageError value)? messageError,
    TResult Function(VerifyPayment value)? verifyPayment,
    TResult Function(SendingCompletedMessage value)? sendingCompletedMessage,
  }) {
    return messageError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(ProcessingPayment value)? processingPayment,
    TResult Function(PaymentError value)? paymentError,
    TResult Function(MessageError value)? messageError,
    TResult Function(VerifyPayment value)? verifyPayment,
    TResult Function(SendingCompletedMessage value)? sendingCompletedMessage,
    required TResult orElse(),
  }) {
    if (messageError != null) {
      return messageError(this);
    }
    return orElse();
  }
}

abstract class MessageError implements PaymentStates {
  factory MessageError() = _$MessageError;
}

/// @nodoc
abstract class _$$VerifyPaymentCopyWith<$Res> {
  factory _$$VerifyPaymentCopyWith(
          _$VerifyPayment value, $Res Function(_$VerifyPayment) then) =
      __$$VerifyPaymentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyPaymentCopyWithImpl<$Res>
    extends _$PaymentStatesCopyWithImpl<$Res>
    implements _$$VerifyPaymentCopyWith<$Res> {
  __$$VerifyPaymentCopyWithImpl(
      _$VerifyPayment _value, $Res Function(_$VerifyPayment) _then)
      : super(_value, (v) => _then(v as _$VerifyPayment));

  @override
  _$VerifyPayment get _value => super._value as _$VerifyPayment;
}

/// @nodoc

class _$VerifyPayment implements VerifyPayment {
  _$VerifyPayment();

  @override
  String toString() {
    return 'PaymentStates.verifyPayment()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerifyPayment);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processingPayment,
    required TResult Function() paymentError,
    required TResult Function() messageError,
    required TResult Function() verifyPayment,
    required TResult Function() sendingCompletedMessage,
  }) {
    return verifyPayment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processingPayment,
    TResult Function()? paymentError,
    TResult Function()? messageError,
    TResult Function()? verifyPayment,
    TResult Function()? sendingCompletedMessage,
  }) {
    return verifyPayment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processingPayment,
    TResult Function()? paymentError,
    TResult Function()? messageError,
    TResult Function()? verifyPayment,
    TResult Function()? sendingCompletedMessage,
    required TResult orElse(),
  }) {
    if (verifyPayment != null) {
      return verifyPayment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initital value) initial,
    required TResult Function(ProcessingPayment value) processingPayment,
    required TResult Function(PaymentError value) paymentError,
    required TResult Function(MessageError value) messageError,
    required TResult Function(VerifyPayment value) verifyPayment,
    required TResult Function(SendingCompletedMessage value)
        sendingCompletedMessage,
  }) {
    return verifyPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(ProcessingPayment value)? processingPayment,
    TResult Function(PaymentError value)? paymentError,
    TResult Function(MessageError value)? messageError,
    TResult Function(VerifyPayment value)? verifyPayment,
    TResult Function(SendingCompletedMessage value)? sendingCompletedMessage,
  }) {
    return verifyPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(ProcessingPayment value)? processingPayment,
    TResult Function(PaymentError value)? paymentError,
    TResult Function(MessageError value)? messageError,
    TResult Function(VerifyPayment value)? verifyPayment,
    TResult Function(SendingCompletedMessage value)? sendingCompletedMessage,
    required TResult orElse(),
  }) {
    if (verifyPayment != null) {
      return verifyPayment(this);
    }
    return orElse();
  }
}

abstract class VerifyPayment implements PaymentStates {
  factory VerifyPayment() = _$VerifyPayment;
}

/// @nodoc
abstract class _$$SendingCompletedMessageCopyWith<$Res> {
  factory _$$SendingCompletedMessageCopyWith(_$SendingCompletedMessage value,
          $Res Function(_$SendingCompletedMessage) then) =
      __$$SendingCompletedMessageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendingCompletedMessageCopyWithImpl<$Res>
    extends _$PaymentStatesCopyWithImpl<$Res>
    implements _$$SendingCompletedMessageCopyWith<$Res> {
  __$$SendingCompletedMessageCopyWithImpl(_$SendingCompletedMessage _value,
      $Res Function(_$SendingCompletedMessage) _then)
      : super(_value, (v) => _then(v as _$SendingCompletedMessage));

  @override
  _$SendingCompletedMessage get _value =>
      super._value as _$SendingCompletedMessage;
}

/// @nodoc

class _$SendingCompletedMessage implements SendingCompletedMessage {
  _$SendingCompletedMessage();

  @override
  String toString() {
    return 'PaymentStates.sendingCompletedMessage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendingCompletedMessage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processingPayment,
    required TResult Function() paymentError,
    required TResult Function() messageError,
    required TResult Function() verifyPayment,
    required TResult Function() sendingCompletedMessage,
  }) {
    return sendingCompletedMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processingPayment,
    TResult Function()? paymentError,
    TResult Function()? messageError,
    TResult Function()? verifyPayment,
    TResult Function()? sendingCompletedMessage,
  }) {
    return sendingCompletedMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processingPayment,
    TResult Function()? paymentError,
    TResult Function()? messageError,
    TResult Function()? verifyPayment,
    TResult Function()? sendingCompletedMessage,
    required TResult orElse(),
  }) {
    if (sendingCompletedMessage != null) {
      return sendingCompletedMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initital value) initial,
    required TResult Function(ProcessingPayment value) processingPayment,
    required TResult Function(PaymentError value) paymentError,
    required TResult Function(MessageError value) messageError,
    required TResult Function(VerifyPayment value) verifyPayment,
    required TResult Function(SendingCompletedMessage value)
        sendingCompletedMessage,
  }) {
    return sendingCompletedMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(ProcessingPayment value)? processingPayment,
    TResult Function(PaymentError value)? paymentError,
    TResult Function(MessageError value)? messageError,
    TResult Function(VerifyPayment value)? verifyPayment,
    TResult Function(SendingCompletedMessage value)? sendingCompletedMessage,
  }) {
    return sendingCompletedMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(ProcessingPayment value)? processingPayment,
    TResult Function(PaymentError value)? paymentError,
    TResult Function(MessageError value)? messageError,
    TResult Function(VerifyPayment value)? verifyPayment,
    TResult Function(SendingCompletedMessage value)? sendingCompletedMessage,
    required TResult orElse(),
  }) {
    if (sendingCompletedMessage != null) {
      return sendingCompletedMessage(this);
    }
    return orElse();
  }
}

abstract class SendingCompletedMessage implements PaymentStates {
  factory SendingCompletedMessage() = _$SendingCompletedMessage;
}
