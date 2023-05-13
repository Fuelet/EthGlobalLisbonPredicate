// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receive_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReceiveEvent {
  double get amount => throw _privateConstructorUsedError;
  String get secret => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double amount, String secret) receive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amount, String secret)? receive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount, String secret)? receive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Receive value) receive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Receive value)? receive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Receive value)? receive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReceiveEventCopyWith<ReceiveEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiveEventCopyWith<$Res> {
  factory $ReceiveEventCopyWith(
          ReceiveEvent value, $Res Function(ReceiveEvent) then) =
      _$ReceiveEventCopyWithImpl<$Res, ReceiveEvent>;
  @useResult
  $Res call({double amount, String secret});
}

/// @nodoc
class _$ReceiveEventCopyWithImpl<$Res, $Val extends ReceiveEvent>
    implements $ReceiveEventCopyWith<$Res> {
  _$ReceiveEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? secret = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReceiveCopyWith<$Res>
    implements $ReceiveEventCopyWith<$Res> {
  factory _$$_ReceiveCopyWith(
          _$_Receive value, $Res Function(_$_Receive) then) =
      __$$_ReceiveCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double amount, String secret});
}

/// @nodoc
class __$$_ReceiveCopyWithImpl<$Res>
    extends _$ReceiveEventCopyWithImpl<$Res, _$_Receive>
    implements _$$_ReceiveCopyWith<$Res> {
  __$$_ReceiveCopyWithImpl(_$_Receive _value, $Res Function(_$_Receive) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? secret = null,
  }) {
    return _then(_$_Receive(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Receive implements _Receive {
  const _$_Receive({required this.amount, required this.secret});

  @override
  final double amount;
  @override
  final String secret;

  @override
  String toString() {
    return 'ReceiveEvent.receive(amount: $amount, secret: $secret)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Receive &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.secret, secret) || other.secret == secret));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount, secret);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReceiveCopyWith<_$_Receive> get copyWith =>
      __$$_ReceiveCopyWithImpl<_$_Receive>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double amount, String secret) receive,
  }) {
    return receive(amount, secret);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double amount, String secret)? receive,
  }) {
    return receive?.call(amount, secret);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount, String secret)? receive,
    required TResult orElse(),
  }) {
    if (receive != null) {
      return receive(amount, secret);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Receive value) receive,
  }) {
    return receive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Receive value)? receive,
  }) {
    return receive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Receive value)? receive,
    required TResult orElse(),
  }) {
    if (receive != null) {
      return receive(this);
    }
    return orElse();
  }
}

abstract class _Receive implements ReceiveEvent {
  const factory _Receive(
      {required final double amount,
      required final String secret}) = _$_Receive;

  @override
  double get amount;
  @override
  String get secret;
  @override
  @JsonKey(ignore: true)
  _$$_ReceiveCopyWith<_$_Receive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReceiveState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProcess,
    required TResult Function(String transactionUrl) successfullyReceived,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProcess,
    TResult? Function(String transactionUrl)? successfullyReceived,
    TResult? Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProcess,
    TResult Function(String transactionUrl)? successfullyReceived,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_SuccessfullyReceived value) successfullyReceived,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_SuccessfullyReceived value)? successfullyReceived,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_SuccessfullyReceived value)? successfullyReceived,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiveStateCopyWith<$Res> {
  factory $ReceiveStateCopyWith(
          ReceiveState value, $Res Function(ReceiveState) then) =
      _$ReceiveStateCopyWithImpl<$Res, ReceiveState>;
}

/// @nodoc
class _$ReceiveStateCopyWithImpl<$Res, $Val extends ReceiveState>
    implements $ReceiveStateCopyWith<$Res> {
  _$ReceiveStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ReceiveStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ReceiveState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProcess,
    required TResult Function(String transactionUrl) successfullyReceived,
    required TResult Function() failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProcess,
    TResult? Function(String transactionUrl)? successfullyReceived,
    TResult? Function()? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProcess,
    TResult Function(String transactionUrl)? successfullyReceived,
    TResult Function()? failed,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_SuccessfullyReceived value) successfullyReceived,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_SuccessfullyReceived value)? successfullyReceived,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_SuccessfullyReceived value)? successfullyReceived,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ReceiveState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_InProcessCopyWith<$Res> {
  factory _$$_InProcessCopyWith(
          _$_InProcess value, $Res Function(_$_InProcess) then) =
      __$$_InProcessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InProcessCopyWithImpl<$Res>
    extends _$ReceiveStateCopyWithImpl<$Res, _$_InProcess>
    implements _$$_InProcessCopyWith<$Res> {
  __$$_InProcessCopyWithImpl(
      _$_InProcess _value, $Res Function(_$_InProcess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InProcess implements _InProcess {
  const _$_InProcess();

  @override
  String toString() {
    return 'ReceiveState.inProcess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InProcess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProcess,
    required TResult Function(String transactionUrl) successfullyReceived,
    required TResult Function() failed,
  }) {
    return inProcess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProcess,
    TResult? Function(String transactionUrl)? successfullyReceived,
    TResult? Function()? failed,
  }) {
    return inProcess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProcess,
    TResult Function(String transactionUrl)? successfullyReceived,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (inProcess != null) {
      return inProcess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_SuccessfullyReceived value) successfullyReceived,
    required TResult Function(_Failed value) failed,
  }) {
    return inProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_SuccessfullyReceived value)? successfullyReceived,
    TResult? Function(_Failed value)? failed,
  }) {
    return inProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_SuccessfullyReceived value)? successfullyReceived,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (inProcess != null) {
      return inProcess(this);
    }
    return orElse();
  }
}

abstract class _InProcess implements ReceiveState {
  const factory _InProcess() = _$_InProcess;
}

/// @nodoc
abstract class _$$_SuccessfullyReceivedCopyWith<$Res> {
  factory _$$_SuccessfullyReceivedCopyWith(_$_SuccessfullyReceived value,
          $Res Function(_$_SuccessfullyReceived) then) =
      __$$_SuccessfullyReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({String transactionUrl});
}

/// @nodoc
class __$$_SuccessfullyReceivedCopyWithImpl<$Res>
    extends _$ReceiveStateCopyWithImpl<$Res, _$_SuccessfullyReceived>
    implements _$$_SuccessfullyReceivedCopyWith<$Res> {
  __$$_SuccessfullyReceivedCopyWithImpl(_$_SuccessfullyReceived _value,
      $Res Function(_$_SuccessfullyReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionUrl = null,
  }) {
    return _then(_$_SuccessfullyReceived(
      null == transactionUrl
          ? _value.transactionUrl
          : transactionUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SuccessfullyReceived implements _SuccessfullyReceived {
  const _$_SuccessfullyReceived(this.transactionUrl);

  @override
  final String transactionUrl;

  @override
  String toString() {
    return 'ReceiveState.successfullyReceived(transactionUrl: $transactionUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessfullyReceived &&
            (identical(other.transactionUrl, transactionUrl) ||
                other.transactionUrl == transactionUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessfullyReceivedCopyWith<_$_SuccessfullyReceived> get copyWith =>
      __$$_SuccessfullyReceivedCopyWithImpl<_$_SuccessfullyReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProcess,
    required TResult Function(String transactionUrl) successfullyReceived,
    required TResult Function() failed,
  }) {
    return successfullyReceived(transactionUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProcess,
    TResult? Function(String transactionUrl)? successfullyReceived,
    TResult? Function()? failed,
  }) {
    return successfullyReceived?.call(transactionUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProcess,
    TResult Function(String transactionUrl)? successfullyReceived,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (successfullyReceived != null) {
      return successfullyReceived(transactionUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_SuccessfullyReceived value) successfullyReceived,
    required TResult Function(_Failed value) failed,
  }) {
    return successfullyReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_SuccessfullyReceived value)? successfullyReceived,
    TResult? Function(_Failed value)? failed,
  }) {
    return successfullyReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_SuccessfullyReceived value)? successfullyReceived,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (successfullyReceived != null) {
      return successfullyReceived(this);
    }
    return orElse();
  }
}

abstract class _SuccessfullyReceived implements ReceiveState {
  const factory _SuccessfullyReceived(final String transactionUrl) =
      _$_SuccessfullyReceived;

  String get transactionUrl;
  @JsonKey(ignore: true)
  _$$_SuccessfullyReceivedCopyWith<_$_SuccessfullyReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailedCopyWith<$Res> {
  factory _$$_FailedCopyWith(_$_Failed value, $Res Function(_$_Failed) then) =
      __$$_FailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailedCopyWithImpl<$Res>
    extends _$ReceiveStateCopyWithImpl<$Res, _$_Failed>
    implements _$$_FailedCopyWith<$Res> {
  __$$_FailedCopyWithImpl(_$_Failed _value, $Res Function(_$_Failed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed();

  @override
  String toString() {
    return 'ReceiveState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Failed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProcess,
    required TResult Function(String transactionUrl) successfullyReceived,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProcess,
    TResult? Function(String transactionUrl)? successfullyReceived,
    TResult? Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProcess,
    TResult Function(String transactionUrl)? successfullyReceived,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_SuccessfullyReceived value) successfullyReceived,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_SuccessfullyReceived value)? successfullyReceived,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_SuccessfullyReceived value)? successfullyReceived,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements ReceiveState {
  const factory _Failed() = _$_Failed;
}
