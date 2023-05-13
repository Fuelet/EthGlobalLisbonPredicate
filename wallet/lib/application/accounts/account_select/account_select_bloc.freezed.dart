// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_select_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountSelectEvent {
  String get accountAddress => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accountAddress) selectAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accountAddress)? selectAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accountAddress)? selectAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectAccount value) selectAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectAccount value)? selectAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectAccount value)? selectAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountSelectEventCopyWith<AccountSelectEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSelectEventCopyWith<$Res> {
  factory $AccountSelectEventCopyWith(
          AccountSelectEvent value, $Res Function(AccountSelectEvent) then) =
      _$AccountSelectEventCopyWithImpl<$Res, AccountSelectEvent>;
  @useResult
  $Res call({String accountAddress});
}

/// @nodoc
class _$AccountSelectEventCopyWithImpl<$Res, $Val extends AccountSelectEvent>
    implements $AccountSelectEventCopyWith<$Res> {
  _$AccountSelectEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountAddress = null,
  }) {
    return _then(_value.copyWith(
      accountAddress: null == accountAddress
          ? _value.accountAddress
          : accountAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SelectAccountCopyWith<$Res>
    implements $AccountSelectEventCopyWith<$Res> {
  factory _$$_SelectAccountCopyWith(
          _$_SelectAccount value, $Res Function(_$_SelectAccount) then) =
      __$$_SelectAccountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accountAddress});
}

/// @nodoc
class __$$_SelectAccountCopyWithImpl<$Res>
    extends _$AccountSelectEventCopyWithImpl<$Res, _$_SelectAccount>
    implements _$$_SelectAccountCopyWith<$Res> {
  __$$_SelectAccountCopyWithImpl(
      _$_SelectAccount _value, $Res Function(_$_SelectAccount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountAddress = null,
  }) {
    return _then(_$_SelectAccount(
      null == accountAddress
          ? _value.accountAddress
          : accountAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectAccount with DiagnosticableTreeMixin implements _SelectAccount {
  const _$_SelectAccount(this.accountAddress);

  @override
  final String accountAddress;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountSelectEvent.selectAccount(accountAddress: $accountAddress)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountSelectEvent.selectAccount'))
      ..add(DiagnosticsProperty('accountAddress', accountAddress));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectAccount &&
            (identical(other.accountAddress, accountAddress) ||
                other.accountAddress == accountAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectAccountCopyWith<_$_SelectAccount> get copyWith =>
      __$$_SelectAccountCopyWithImpl<_$_SelectAccount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accountAddress) selectAccount,
  }) {
    return selectAccount(accountAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accountAddress)? selectAccount,
  }) {
    return selectAccount?.call(accountAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accountAddress)? selectAccount,
    required TResult orElse(),
  }) {
    if (selectAccount != null) {
      return selectAccount(accountAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectAccount value) selectAccount,
  }) {
    return selectAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectAccount value)? selectAccount,
  }) {
    return selectAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectAccount value)? selectAccount,
    required TResult orElse(),
  }) {
    if (selectAccount != null) {
      return selectAccount(this);
    }
    return orElse();
  }
}

abstract class _SelectAccount implements AccountSelectEvent {
  const factory _SelectAccount(final String accountAddress) = _$_SelectAccount;

  @override
  String get accountAddress;
  @override
  @JsonKey(ignore: true)
  _$$_SelectAccountCopyWith<_$_SelectAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountSelectState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProcess,
    required TResult Function(String address) accountSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProcess,
    TResult? Function(String address)? accountSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProcess,
    TResult Function(String address)? accountSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_AccountSelected value) accountSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_AccountSelected value)? accountSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_AccountSelected value)? accountSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSelectStateCopyWith<$Res> {
  factory $AccountSelectStateCopyWith(
          AccountSelectState value, $Res Function(AccountSelectState) then) =
      _$AccountSelectStateCopyWithImpl<$Res, AccountSelectState>;
}

/// @nodoc
class _$AccountSelectStateCopyWithImpl<$Res, $Val extends AccountSelectState>
    implements $AccountSelectStateCopyWith<$Res> {
  _$AccountSelectStateCopyWithImpl(this._value, this._then);

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
    extends _$AccountSelectStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountSelectState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AccountSelectState.initial'));
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
    required TResult Function(String address) accountSelected,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProcess,
    TResult? Function(String address)? accountSelected,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProcess,
    TResult Function(String address)? accountSelected,
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
    required TResult Function(_AccountSelected value) accountSelected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_AccountSelected value)? accountSelected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_AccountSelected value)? accountSelected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AccountSelectState {
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
    extends _$AccountSelectStateCopyWithImpl<$Res, _$_InProcess>
    implements _$$_InProcessCopyWith<$Res> {
  __$$_InProcessCopyWithImpl(
      _$_InProcess _value, $Res Function(_$_InProcess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InProcess with DiagnosticableTreeMixin implements _InProcess {
  const _$_InProcess();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountSelectState.inProcess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AccountSelectState.inProcess'));
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
    required TResult Function(String address) accountSelected,
  }) {
    return inProcess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProcess,
    TResult? Function(String address)? accountSelected,
  }) {
    return inProcess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProcess,
    TResult Function(String address)? accountSelected,
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
    required TResult Function(_AccountSelected value) accountSelected,
  }) {
    return inProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_AccountSelected value)? accountSelected,
  }) {
    return inProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_AccountSelected value)? accountSelected,
    required TResult orElse(),
  }) {
    if (inProcess != null) {
      return inProcess(this);
    }
    return orElse();
  }
}

abstract class _InProcess implements AccountSelectState {
  const factory _InProcess() = _$_InProcess;
}

/// @nodoc
abstract class _$$_AccountSelectedCopyWith<$Res> {
  factory _$$_AccountSelectedCopyWith(
          _$_AccountSelected value, $Res Function(_$_AccountSelected) then) =
      __$$_AccountSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({String address});
}

/// @nodoc
class __$$_AccountSelectedCopyWithImpl<$Res>
    extends _$AccountSelectStateCopyWithImpl<$Res, _$_AccountSelected>
    implements _$$_AccountSelectedCopyWith<$Res> {
  __$$_AccountSelectedCopyWithImpl(
      _$_AccountSelected _value, $Res Function(_$_AccountSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$_AccountSelected(
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AccountSelected
    with DiagnosticableTreeMixin
    implements _AccountSelected {
  const _$_AccountSelected(this.address);

  @override
  final String address;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountSelectState.accountSelected(address: $address)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountSelectState.accountSelected'))
      ..add(DiagnosticsProperty('address', address));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountSelected &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountSelectedCopyWith<_$_AccountSelected> get copyWith =>
      __$$_AccountSelectedCopyWithImpl<_$_AccountSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProcess,
    required TResult Function(String address) accountSelected,
  }) {
    return accountSelected(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProcess,
    TResult? Function(String address)? accountSelected,
  }) {
    return accountSelected?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProcess,
    TResult Function(String address)? accountSelected,
    required TResult orElse(),
  }) {
    if (accountSelected != null) {
      return accountSelected(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProcess value) inProcess,
    required TResult Function(_AccountSelected value) accountSelected,
  }) {
    return accountSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProcess value)? inProcess,
    TResult? Function(_AccountSelected value)? accountSelected,
  }) {
    return accountSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProcess value)? inProcess,
    TResult Function(_AccountSelected value)? accountSelected,
    required TResult orElse(),
  }) {
    if (accountSelected != null) {
      return accountSelected(this);
    }
    return orElse();
  }
}

abstract class _AccountSelected implements AccountSelectState {
  const factory _AccountSelected(final String address) = _$_AccountSelected;

  String get address;
  @JsonKey(ignore: true)
  _$$_AccountSelectedCopyWith<_$_AccountSelected> get copyWith =>
      throw _privateConstructorUsedError;
}
