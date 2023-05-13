// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balances_fetch_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BalancesFetchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBalances,
    required TResult Function() resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBalances,
    TResult? Function()? resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBalances,
    TResult Function()? resetState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchBalances value) fetchBalances,
    required TResult Function(_ResetState value) resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchBalances value)? fetchBalances,
    TResult? Function(_ResetState value)? resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBalances value)? fetchBalances,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalancesFetchEventCopyWith<$Res> {
  factory $BalancesFetchEventCopyWith(
          BalancesFetchEvent value, $Res Function(BalancesFetchEvent) then) =
      _$BalancesFetchEventCopyWithImpl<$Res, BalancesFetchEvent>;
}

/// @nodoc
class _$BalancesFetchEventCopyWithImpl<$Res, $Val extends BalancesFetchEvent>
    implements $BalancesFetchEventCopyWith<$Res> {
  _$BalancesFetchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchBalancesCopyWith<$Res> {
  factory _$$_FetchBalancesCopyWith(
          _$_FetchBalances value, $Res Function(_$_FetchBalances) then) =
      __$$_FetchBalancesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchBalancesCopyWithImpl<$Res>
    extends _$BalancesFetchEventCopyWithImpl<$Res, _$_FetchBalances>
    implements _$$_FetchBalancesCopyWith<$Res> {
  __$$_FetchBalancesCopyWithImpl(
      _$_FetchBalances _value, $Res Function(_$_FetchBalances) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchBalances implements _FetchBalances {
  const _$_FetchBalances();

  @override
  String toString() {
    return 'BalancesFetchEvent.fetchBalances()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchBalances);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBalances,
    required TResult Function() resetState,
  }) {
    return fetchBalances();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBalances,
    TResult? Function()? resetState,
  }) {
    return fetchBalances?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBalances,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (fetchBalances != null) {
      return fetchBalances();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchBalances value) fetchBalances,
    required TResult Function(_ResetState value) resetState,
  }) {
    return fetchBalances(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchBalances value)? fetchBalances,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return fetchBalances?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBalances value)? fetchBalances,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (fetchBalances != null) {
      return fetchBalances(this);
    }
    return orElse();
  }
}

abstract class _FetchBalances implements BalancesFetchEvent {
  const factory _FetchBalances() = _$_FetchBalances;
}

/// @nodoc
abstract class _$$_ResetStateCopyWith<$Res> {
  factory _$$_ResetStateCopyWith(
          _$_ResetState value, $Res Function(_$_ResetState) then) =
      __$$_ResetStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetStateCopyWithImpl<$Res>
    extends _$BalancesFetchEventCopyWithImpl<$Res, _$_ResetState>
    implements _$$_ResetStateCopyWith<$Res> {
  __$$_ResetStateCopyWithImpl(
      _$_ResetState _value, $Res Function(_$_ResetState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ResetState implements _ResetState {
  const _$_ResetState();

  @override
  String toString() {
    return 'BalancesFetchEvent.resetState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResetState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBalances,
    required TResult Function() resetState,
  }) {
    return resetState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBalances,
    TResult? Function()? resetState,
  }) {
    return resetState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBalances,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchBalances value) fetchBalances,
    required TResult Function(_ResetState value) resetState,
  }) {
    return resetState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchBalances value)? fetchBalances,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return resetState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBalances value)? fetchBalances,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState(this);
    }
    return orElse();
  }
}

abstract class _ResetState implements BalancesFetchEvent {
  const factory _ResetState() = _$_ResetState;
}

/// @nodoc
mixin _$BalancesFetchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProcess,
    required TResult Function(FetchedBalanceData balanceData) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProcess,
    TResult? Function(FetchedBalanceData balanceData)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProcess,
    TResult Function(FetchedBalanceData balanceData)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(Fetched value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(Fetched value)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(Fetched value)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalancesFetchStateCopyWith<$Res> {
  factory $BalancesFetchStateCopyWith(
          BalancesFetchState value, $Res Function(BalancesFetchState) then) =
      _$BalancesFetchStateCopyWithImpl<$Res, BalancesFetchState>;
}

/// @nodoc
class _$BalancesFetchStateCopyWithImpl<$Res, $Val extends BalancesFetchState>
    implements $BalancesFetchStateCopyWith<$Res> {
  _$BalancesFetchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$BalancesFetchStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'BalancesFetchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProcess,
    required TResult Function(FetchedBalanceData balanceData) fetched,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProcess,
    TResult? Function(FetchedBalanceData balanceData)? fetched,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProcess,
    TResult Function(FetchedBalanceData balanceData)? fetched,
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
    required TResult Function(Initial value) initial,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(Fetched value) fetched,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(Fetched value)? fetched,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(Fetched value)? fetched,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements BalancesFetchState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$_InProcessCopyWith<$Res> {
  factory _$$_InProcessCopyWith(
          _$_InProcess value, $Res Function(_$_InProcess) then) =
      __$$_InProcessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InProcessCopyWithImpl<$Res>
    extends _$BalancesFetchStateCopyWithImpl<$Res, _$_InProcess>
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
    return 'BalancesFetchState.inProcess()';
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
    required TResult Function(FetchedBalanceData balanceData) fetched,
  }) {
    return inProcess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProcess,
    TResult? Function(FetchedBalanceData balanceData)? fetched,
  }) {
    return inProcess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProcess,
    TResult Function(FetchedBalanceData balanceData)? fetched,
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
    required TResult Function(Initial value) initial,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(Fetched value) fetched,
  }) {
    return inProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(Fetched value)? fetched,
  }) {
    return inProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(Fetched value)? fetched,
    required TResult orElse(),
  }) {
    if (inProcess != null) {
      return inProcess(this);
    }
    return orElse();
  }
}

abstract class _InProcess implements BalancesFetchState {
  const factory _InProcess() = _$_InProcess;
}

/// @nodoc
abstract class _$$FetchedCopyWith<$Res> {
  factory _$$FetchedCopyWith(_$Fetched value, $Res Function(_$Fetched) then) =
      __$$FetchedCopyWithImpl<$Res>;
  @useResult
  $Res call({FetchedBalanceData balanceData});
}

/// @nodoc
class __$$FetchedCopyWithImpl<$Res>
    extends _$BalancesFetchStateCopyWithImpl<$Res, _$Fetched>
    implements _$$FetchedCopyWith<$Res> {
  __$$FetchedCopyWithImpl(_$Fetched _value, $Res Function(_$Fetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balanceData = null,
  }) {
    return _then(_$Fetched(
      null == balanceData
          ? _value.balanceData
          : balanceData // ignore: cast_nullable_to_non_nullable
              as FetchedBalanceData,
    ));
  }
}

/// @nodoc

class _$Fetched implements Fetched {
  const _$Fetched(this.balanceData);

  @override
  final FetchedBalanceData balanceData;

  @override
  String toString() {
    return 'BalancesFetchState.fetched(balanceData: $balanceData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Fetched &&
            (identical(other.balanceData, balanceData) ||
                other.balanceData == balanceData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balanceData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchedCopyWith<_$Fetched> get copyWith =>
      __$$FetchedCopyWithImpl<_$Fetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProcess,
    required TResult Function(FetchedBalanceData balanceData) fetched,
  }) {
    return fetched(balanceData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProcess,
    TResult? Function(FetchedBalanceData balanceData)? fetched,
  }) {
    return fetched?.call(balanceData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProcess,
    TResult Function(FetchedBalanceData balanceData)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(balanceData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(Fetched value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(Fetched value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(Fetched value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class Fetched implements BalancesFetchState {
  const factory Fetched(final FetchedBalanceData balanceData) = _$Fetched;

  FetchedBalanceData get balanceData;
  @JsonKey(ignore: true)
  _$$FetchedCopyWith<_$Fetched> get copyWith =>
      throw _privateConstructorUsedError;
}
