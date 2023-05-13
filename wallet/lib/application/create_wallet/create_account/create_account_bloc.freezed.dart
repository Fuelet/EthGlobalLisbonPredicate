// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateAccountEvent {
  String get mnemonic => throw _privateConstructorUsedError;
  bool get creatingAfterSettingPasscode => throw _privateConstructorUsedError;
  List<Account> get existingAccounts => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mnemonic,
            bool creatingAfterSettingPasscode, List<Account> existingAccounts)
        createAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mnemonic, bool creatingAfterSettingPasscode,
            List<Account> existingAccounts)?
        createAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mnemonic, bool creatingAfterSettingPasscode,
            List<Account> existingAccounts)?
        createAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateAccount value) createAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateAccount value)? createAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateAccount value)? createAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateAccountEventCopyWith<CreateAccountEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccountEventCopyWith<$Res> {
  factory $CreateAccountEventCopyWith(
          CreateAccountEvent value, $Res Function(CreateAccountEvent) then) =
      _$CreateAccountEventCopyWithImpl<$Res, CreateAccountEvent>;
  @useResult
  $Res call(
      {String mnemonic,
      bool creatingAfterSettingPasscode,
      List<Account> existingAccounts});
}

/// @nodoc
class _$CreateAccountEventCopyWithImpl<$Res, $Val extends CreateAccountEvent>
    implements $CreateAccountEventCopyWith<$Res> {
  _$CreateAccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mnemonic = null,
    Object? creatingAfterSettingPasscode = null,
    Object? existingAccounts = null,
  }) {
    return _then(_value.copyWith(
      mnemonic: null == mnemonic
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String,
      creatingAfterSettingPasscode: null == creatingAfterSettingPasscode
          ? _value.creatingAfterSettingPasscode
          : creatingAfterSettingPasscode // ignore: cast_nullable_to_non_nullable
              as bool,
      existingAccounts: null == existingAccounts
          ? _value.existingAccounts
          : existingAccounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateAccountCopyWith<$Res>
    implements $CreateAccountEventCopyWith<$Res> {
  factory _$$_CreateAccountCopyWith(
          _$_CreateAccount value, $Res Function(_$_CreateAccount) then) =
      __$$_CreateAccountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String mnemonic,
      bool creatingAfterSettingPasscode,
      List<Account> existingAccounts});
}

/// @nodoc
class __$$_CreateAccountCopyWithImpl<$Res>
    extends _$CreateAccountEventCopyWithImpl<$Res, _$_CreateAccount>
    implements _$$_CreateAccountCopyWith<$Res> {
  __$$_CreateAccountCopyWithImpl(
      _$_CreateAccount _value, $Res Function(_$_CreateAccount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mnemonic = null,
    Object? creatingAfterSettingPasscode = null,
    Object? existingAccounts = null,
  }) {
    return _then(_$_CreateAccount(
      null == mnemonic
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String,
      creatingAfterSettingPasscode: null == creatingAfterSettingPasscode
          ? _value.creatingAfterSettingPasscode
          : creatingAfterSettingPasscode // ignore: cast_nullable_to_non_nullable
              as bool,
      existingAccounts: null == existingAccounts
          ? _value._existingAccounts
          : existingAccounts // ignore: cast_nullable_to_non_nullable
              as List<Account>,
    ));
  }
}

/// @nodoc

class _$_CreateAccount implements _CreateAccount {
  const _$_CreateAccount(this.mnemonic,
      {required this.creatingAfterSettingPasscode,
      required final List<Account> existingAccounts})
      : _existingAccounts = existingAccounts;

  @override
  final String mnemonic;
  @override
  final bool creatingAfterSettingPasscode;
  final List<Account> _existingAccounts;
  @override
  List<Account> get existingAccounts {
    if (_existingAccounts is EqualUnmodifiableListView)
      return _existingAccounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_existingAccounts);
  }

  @override
  String toString() {
    return 'CreateAccountEvent.createAccount(mnemonic: $mnemonic, creatingAfterSettingPasscode: $creatingAfterSettingPasscode, existingAccounts: $existingAccounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateAccount &&
            (identical(other.mnemonic, mnemonic) ||
                other.mnemonic == mnemonic) &&
            (identical(other.creatingAfterSettingPasscode,
                    creatingAfterSettingPasscode) ||
                other.creatingAfterSettingPasscode ==
                    creatingAfterSettingPasscode) &&
            const DeepCollectionEquality()
                .equals(other._existingAccounts, _existingAccounts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      mnemonic,
      creatingAfterSettingPasscode,
      const DeepCollectionEquality().hash(_existingAccounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateAccountCopyWith<_$_CreateAccount> get copyWith =>
      __$$_CreateAccountCopyWithImpl<_$_CreateAccount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mnemonic,
            bool creatingAfterSettingPasscode, List<Account> existingAccounts)
        createAccount,
  }) {
    return createAccount(
        mnemonic, creatingAfterSettingPasscode, existingAccounts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mnemonic, bool creatingAfterSettingPasscode,
            List<Account> existingAccounts)?
        createAccount,
  }) {
    return createAccount?.call(
        mnemonic, creatingAfterSettingPasscode, existingAccounts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mnemonic, bool creatingAfterSettingPasscode,
            List<Account> existingAccounts)?
        createAccount,
    required TResult orElse(),
  }) {
    if (createAccount != null) {
      return createAccount(
          mnemonic, creatingAfterSettingPasscode, existingAccounts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateAccount value) createAccount,
  }) {
    return createAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateAccount value)? createAccount,
  }) {
    return createAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateAccount value)? createAccount,
    required TResult orElse(),
  }) {
    if (createAccount != null) {
      return createAccount(this);
    }
    return orElse();
  }
}

abstract class _CreateAccount implements CreateAccountEvent {
  const factory _CreateAccount(final String mnemonic,
      {required final bool creatingAfterSettingPasscode,
      required final List<Account> existingAccounts}) = _$_CreateAccount;

  @override
  String get mnemonic;
  @override
  bool get creatingAfterSettingPasscode;
  @override
  List<Account> get existingAccounts;
  @override
  @JsonKey(ignore: true)
  _$$_CreateAccountCopyWith<_$_CreateAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateAccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Account account) created,
    required TResult Function(WalletCreateFailure failure) creationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Account account)? created,
    TResult? Function(WalletCreateFailure failure)? creationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Account account)? created,
    TResult Function(WalletCreateFailure failure)? creationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Created value) created,
    required TResult Function(_CreationFailed value) creationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Created value)? created,
    TResult? Function(_CreationFailed value)? creationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_CreationFailed value)? creationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccountStateCopyWith<$Res> {
  factory $CreateAccountStateCopyWith(
          CreateAccountState value, $Res Function(CreateAccountState) then) =
      _$CreateAccountStateCopyWithImpl<$Res, CreateAccountState>;
}

/// @nodoc
class _$CreateAccountStateCopyWithImpl<$Res, $Val extends CreateAccountState>
    implements $CreateAccountStateCopyWith<$Res> {
  _$CreateAccountStateCopyWithImpl(this._value, this._then);

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
    extends _$CreateAccountStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CreateAccountState.initial()';
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
    required TResult Function(Account account) created,
    required TResult Function(WalletCreateFailure failure) creationFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Account account)? created,
    TResult? Function(WalletCreateFailure failure)? creationFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Account account)? created,
    TResult Function(WalletCreateFailure failure)? creationFailed,
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
    required TResult Function(_Created value) created,
    required TResult Function(_CreationFailed value) creationFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Created value)? created,
    TResult? Function(_CreationFailed value)? creationFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_CreationFailed value)? creationFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateAccountState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_CreatedCopyWith<$Res> {
  factory _$$_CreatedCopyWith(
          _$_Created value, $Res Function(_$_Created) then) =
      __$$_CreatedCopyWithImpl<$Res>;
  @useResult
  $Res call({Account account});
}

/// @nodoc
class __$$_CreatedCopyWithImpl<$Res>
    extends _$CreateAccountStateCopyWithImpl<$Res, _$_Created>
    implements _$$_CreatedCopyWith<$Res> {
  __$$_CreatedCopyWithImpl(_$_Created _value, $Res Function(_$_Created) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$_Created(
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ));
  }
}

/// @nodoc

class _$_Created implements _Created {
  const _$_Created(this.account);

  @override
  final Account account;

  @override
  String toString() {
    return 'CreateAccountState.created(account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Created &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatedCopyWith<_$_Created> get copyWith =>
      __$$_CreatedCopyWithImpl<_$_Created>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Account account) created,
    required TResult Function(WalletCreateFailure failure) creationFailed,
  }) {
    return created(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Account account)? created,
    TResult? Function(WalletCreateFailure failure)? creationFailed,
  }) {
    return created?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Account account)? created,
    TResult Function(WalletCreateFailure failure)? creationFailed,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Created value) created,
    required TResult Function(_CreationFailed value) creationFailed,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Created value)? created,
    TResult? Function(_CreationFailed value)? creationFailed,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_CreationFailed value)? creationFailed,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class _Created implements CreateAccountState {
  const factory _Created(final Account account) = _$_Created;

  Account get account;
  @JsonKey(ignore: true)
  _$$_CreatedCopyWith<_$_Created> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreationFailedCopyWith<$Res> {
  factory _$$_CreationFailedCopyWith(
          _$_CreationFailed value, $Res Function(_$_CreationFailed) then) =
      __$$_CreationFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({WalletCreateFailure failure});

  $WalletCreateFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_CreationFailedCopyWithImpl<$Res>
    extends _$CreateAccountStateCopyWithImpl<$Res, _$_CreationFailed>
    implements _$$_CreationFailedCopyWith<$Res> {
  __$$_CreationFailedCopyWithImpl(
      _$_CreationFailed _value, $Res Function(_$_CreationFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_CreationFailed(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as WalletCreateFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletCreateFailureCopyWith<$Res> get failure {
    return $WalletCreateFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_CreationFailed implements _CreationFailed {
  const _$_CreationFailed(this.failure);

  @override
  final WalletCreateFailure failure;

  @override
  String toString() {
    return 'CreateAccountState.creationFailed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreationFailed &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreationFailedCopyWith<_$_CreationFailed> get copyWith =>
      __$$_CreationFailedCopyWithImpl<_$_CreationFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Account account) created,
    required TResult Function(WalletCreateFailure failure) creationFailed,
  }) {
    return creationFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Account account)? created,
    TResult? Function(WalletCreateFailure failure)? creationFailed,
  }) {
    return creationFailed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Account account)? created,
    TResult Function(WalletCreateFailure failure)? creationFailed,
    required TResult orElse(),
  }) {
    if (creationFailed != null) {
      return creationFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Created value) created,
    required TResult Function(_CreationFailed value) creationFailed,
  }) {
    return creationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Created value)? created,
    TResult? Function(_CreationFailed value)? creationFailed,
  }) {
    return creationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_CreationFailed value)? creationFailed,
    required TResult orElse(),
  }) {
    if (creationFailed != null) {
      return creationFailed(this);
    }
    return orElse();
  }
}

abstract class _CreationFailed implements CreateAccountState {
  const factory _CreationFailed(final WalletCreateFailure failure) =
      _$_CreationFailed;

  WalletCreateFailure get failure;
  @JsonKey(ignore: true)
  _$$_CreationFailedCopyWith<_$_CreationFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
