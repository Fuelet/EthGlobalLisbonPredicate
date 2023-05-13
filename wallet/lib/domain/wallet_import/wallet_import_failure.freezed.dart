// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_import_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WalletImportFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() validationFailed,
    required TResult Function() privateKeyValidationFailed,
    required TResult Function() invalidPrivateKey,
    required TResult Function() invalidMnemonic,
    required TResult Function() accountAlreadyAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? validationFailed,
    TResult? Function()? privateKeyValidationFailed,
    TResult? Function()? invalidPrivateKey,
    TResult? Function()? invalidMnemonic,
    TResult? Function()? accountAlreadyAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? validationFailed,
    TResult Function()? privateKeyValidationFailed,
    TResult Function()? invalidPrivateKey,
    TResult Function()? invalidMnemonic,
    TResult Function()? accountAlreadyAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidationFailed value) validationFailed,
    required TResult Function(_PrivateKeyValidationFailed value)
        privateKeyValidationFailed,
    required TResult Function(_InvalidPrivateKey value) invalidPrivateKey,
    required TResult Function(_InvalidMnemonic value) invalidMnemonic,
    required TResult Function(_AccountAlreadyAdded value) accountAlreadyAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidationFailed value)? validationFailed,
    TResult? Function(_PrivateKeyValidationFailed value)?
        privateKeyValidationFailed,
    TResult? Function(_InvalidPrivateKey value)? invalidPrivateKey,
    TResult? Function(_InvalidMnemonic value)? invalidMnemonic,
    TResult? Function(_AccountAlreadyAdded value)? accountAlreadyAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidationFailed value)? validationFailed,
    TResult Function(_PrivateKeyValidationFailed value)?
        privateKeyValidationFailed,
    TResult Function(_InvalidPrivateKey value)? invalidPrivateKey,
    TResult Function(_InvalidMnemonic value)? invalidMnemonic,
    TResult Function(_AccountAlreadyAdded value)? accountAlreadyAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletImportFailureCopyWith<$Res> {
  factory $WalletImportFailureCopyWith(
          WalletImportFailure value, $Res Function(WalletImportFailure) then) =
      _$WalletImportFailureCopyWithImpl<$Res, WalletImportFailure>;
}

/// @nodoc
class _$WalletImportFailureCopyWithImpl<$Res, $Val extends WalletImportFailure>
    implements $WalletImportFailureCopyWith<$Res> {
  _$WalletImportFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ValidationFailedCopyWith<$Res> {
  factory _$$_ValidationFailedCopyWith(
          _$_ValidationFailed value, $Res Function(_$_ValidationFailed) then) =
      __$$_ValidationFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ValidationFailedCopyWithImpl<$Res>
    extends _$WalletImportFailureCopyWithImpl<$Res, _$_ValidationFailed>
    implements _$$_ValidationFailedCopyWith<$Res> {
  __$$_ValidationFailedCopyWithImpl(
      _$_ValidationFailed _value, $Res Function(_$_ValidationFailed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ValidationFailed implements _ValidationFailed {
  const _$_ValidationFailed();

  @override
  String toString() {
    return 'WalletImportFailure.validationFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ValidationFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() validationFailed,
    required TResult Function() privateKeyValidationFailed,
    required TResult Function() invalidPrivateKey,
    required TResult Function() invalidMnemonic,
    required TResult Function() accountAlreadyAdded,
  }) {
    return validationFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? validationFailed,
    TResult? Function()? privateKeyValidationFailed,
    TResult? Function()? invalidPrivateKey,
    TResult? Function()? invalidMnemonic,
    TResult? Function()? accountAlreadyAdded,
  }) {
    return validationFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? validationFailed,
    TResult Function()? privateKeyValidationFailed,
    TResult Function()? invalidPrivateKey,
    TResult Function()? invalidMnemonic,
    TResult Function()? accountAlreadyAdded,
    required TResult orElse(),
  }) {
    if (validationFailed != null) {
      return validationFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidationFailed value) validationFailed,
    required TResult Function(_PrivateKeyValidationFailed value)
        privateKeyValidationFailed,
    required TResult Function(_InvalidPrivateKey value) invalidPrivateKey,
    required TResult Function(_InvalidMnemonic value) invalidMnemonic,
    required TResult Function(_AccountAlreadyAdded value) accountAlreadyAdded,
  }) {
    return validationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidationFailed value)? validationFailed,
    TResult? Function(_PrivateKeyValidationFailed value)?
        privateKeyValidationFailed,
    TResult? Function(_InvalidPrivateKey value)? invalidPrivateKey,
    TResult? Function(_InvalidMnemonic value)? invalidMnemonic,
    TResult? Function(_AccountAlreadyAdded value)? accountAlreadyAdded,
  }) {
    return validationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidationFailed value)? validationFailed,
    TResult Function(_PrivateKeyValidationFailed value)?
        privateKeyValidationFailed,
    TResult Function(_InvalidPrivateKey value)? invalidPrivateKey,
    TResult Function(_InvalidMnemonic value)? invalidMnemonic,
    TResult Function(_AccountAlreadyAdded value)? accountAlreadyAdded,
    required TResult orElse(),
  }) {
    if (validationFailed != null) {
      return validationFailed(this);
    }
    return orElse();
  }
}

abstract class _ValidationFailed implements WalletImportFailure {
  const factory _ValidationFailed() = _$_ValidationFailed;
}

/// @nodoc
abstract class _$$_PrivateKeyValidationFailedCopyWith<$Res> {
  factory _$$_PrivateKeyValidationFailedCopyWith(
          _$_PrivateKeyValidationFailed value,
          $Res Function(_$_PrivateKeyValidationFailed) then) =
      __$$_PrivateKeyValidationFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PrivateKeyValidationFailedCopyWithImpl<$Res>
    extends _$WalletImportFailureCopyWithImpl<$Res,
        _$_PrivateKeyValidationFailed>
    implements _$$_PrivateKeyValidationFailedCopyWith<$Res> {
  __$$_PrivateKeyValidationFailedCopyWithImpl(
      _$_PrivateKeyValidationFailed _value,
      $Res Function(_$_PrivateKeyValidationFailed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PrivateKeyValidationFailed implements _PrivateKeyValidationFailed {
  const _$_PrivateKeyValidationFailed();

  @override
  String toString() {
    return 'WalletImportFailure.privateKeyValidationFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrivateKeyValidationFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() validationFailed,
    required TResult Function() privateKeyValidationFailed,
    required TResult Function() invalidPrivateKey,
    required TResult Function() invalidMnemonic,
    required TResult Function() accountAlreadyAdded,
  }) {
    return privateKeyValidationFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? validationFailed,
    TResult? Function()? privateKeyValidationFailed,
    TResult? Function()? invalidPrivateKey,
    TResult? Function()? invalidMnemonic,
    TResult? Function()? accountAlreadyAdded,
  }) {
    return privateKeyValidationFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? validationFailed,
    TResult Function()? privateKeyValidationFailed,
    TResult Function()? invalidPrivateKey,
    TResult Function()? invalidMnemonic,
    TResult Function()? accountAlreadyAdded,
    required TResult orElse(),
  }) {
    if (privateKeyValidationFailed != null) {
      return privateKeyValidationFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidationFailed value) validationFailed,
    required TResult Function(_PrivateKeyValidationFailed value)
        privateKeyValidationFailed,
    required TResult Function(_InvalidPrivateKey value) invalidPrivateKey,
    required TResult Function(_InvalidMnemonic value) invalidMnemonic,
    required TResult Function(_AccountAlreadyAdded value) accountAlreadyAdded,
  }) {
    return privateKeyValidationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidationFailed value)? validationFailed,
    TResult? Function(_PrivateKeyValidationFailed value)?
        privateKeyValidationFailed,
    TResult? Function(_InvalidPrivateKey value)? invalidPrivateKey,
    TResult? Function(_InvalidMnemonic value)? invalidMnemonic,
    TResult? Function(_AccountAlreadyAdded value)? accountAlreadyAdded,
  }) {
    return privateKeyValidationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidationFailed value)? validationFailed,
    TResult Function(_PrivateKeyValidationFailed value)?
        privateKeyValidationFailed,
    TResult Function(_InvalidPrivateKey value)? invalidPrivateKey,
    TResult Function(_InvalidMnemonic value)? invalidMnemonic,
    TResult Function(_AccountAlreadyAdded value)? accountAlreadyAdded,
    required TResult orElse(),
  }) {
    if (privateKeyValidationFailed != null) {
      return privateKeyValidationFailed(this);
    }
    return orElse();
  }
}

abstract class _PrivateKeyValidationFailed implements WalletImportFailure {
  const factory _PrivateKeyValidationFailed() = _$_PrivateKeyValidationFailed;
}

/// @nodoc
abstract class _$$_InvalidPrivateKeyCopyWith<$Res> {
  factory _$$_InvalidPrivateKeyCopyWith(_$_InvalidPrivateKey value,
          $Res Function(_$_InvalidPrivateKey) then) =
      __$$_InvalidPrivateKeyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InvalidPrivateKeyCopyWithImpl<$Res>
    extends _$WalletImportFailureCopyWithImpl<$Res, _$_InvalidPrivateKey>
    implements _$$_InvalidPrivateKeyCopyWith<$Res> {
  __$$_InvalidPrivateKeyCopyWithImpl(
      _$_InvalidPrivateKey _value, $Res Function(_$_InvalidPrivateKey) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InvalidPrivateKey implements _InvalidPrivateKey {
  const _$_InvalidPrivateKey();

  @override
  String toString() {
    return 'WalletImportFailure.invalidPrivateKey()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InvalidPrivateKey);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() validationFailed,
    required TResult Function() privateKeyValidationFailed,
    required TResult Function() invalidPrivateKey,
    required TResult Function() invalidMnemonic,
    required TResult Function() accountAlreadyAdded,
  }) {
    return invalidPrivateKey();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? validationFailed,
    TResult? Function()? privateKeyValidationFailed,
    TResult? Function()? invalidPrivateKey,
    TResult? Function()? invalidMnemonic,
    TResult? Function()? accountAlreadyAdded,
  }) {
    return invalidPrivateKey?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? validationFailed,
    TResult Function()? privateKeyValidationFailed,
    TResult Function()? invalidPrivateKey,
    TResult Function()? invalidMnemonic,
    TResult Function()? accountAlreadyAdded,
    required TResult orElse(),
  }) {
    if (invalidPrivateKey != null) {
      return invalidPrivateKey();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidationFailed value) validationFailed,
    required TResult Function(_PrivateKeyValidationFailed value)
        privateKeyValidationFailed,
    required TResult Function(_InvalidPrivateKey value) invalidPrivateKey,
    required TResult Function(_InvalidMnemonic value) invalidMnemonic,
    required TResult Function(_AccountAlreadyAdded value) accountAlreadyAdded,
  }) {
    return invalidPrivateKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidationFailed value)? validationFailed,
    TResult? Function(_PrivateKeyValidationFailed value)?
        privateKeyValidationFailed,
    TResult? Function(_InvalidPrivateKey value)? invalidPrivateKey,
    TResult? Function(_InvalidMnemonic value)? invalidMnemonic,
    TResult? Function(_AccountAlreadyAdded value)? accountAlreadyAdded,
  }) {
    return invalidPrivateKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidationFailed value)? validationFailed,
    TResult Function(_PrivateKeyValidationFailed value)?
        privateKeyValidationFailed,
    TResult Function(_InvalidPrivateKey value)? invalidPrivateKey,
    TResult Function(_InvalidMnemonic value)? invalidMnemonic,
    TResult Function(_AccountAlreadyAdded value)? accountAlreadyAdded,
    required TResult orElse(),
  }) {
    if (invalidPrivateKey != null) {
      return invalidPrivateKey(this);
    }
    return orElse();
  }
}

abstract class _InvalidPrivateKey implements WalletImportFailure {
  const factory _InvalidPrivateKey() = _$_InvalidPrivateKey;
}

/// @nodoc
abstract class _$$_InvalidMnemonicCopyWith<$Res> {
  factory _$$_InvalidMnemonicCopyWith(
          _$_InvalidMnemonic value, $Res Function(_$_InvalidMnemonic) then) =
      __$$_InvalidMnemonicCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InvalidMnemonicCopyWithImpl<$Res>
    extends _$WalletImportFailureCopyWithImpl<$Res, _$_InvalidMnemonic>
    implements _$$_InvalidMnemonicCopyWith<$Res> {
  __$$_InvalidMnemonicCopyWithImpl(
      _$_InvalidMnemonic _value, $Res Function(_$_InvalidMnemonic) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InvalidMnemonic implements _InvalidMnemonic {
  const _$_InvalidMnemonic();

  @override
  String toString() {
    return 'WalletImportFailure.invalidMnemonic()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InvalidMnemonic);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() validationFailed,
    required TResult Function() privateKeyValidationFailed,
    required TResult Function() invalidPrivateKey,
    required TResult Function() invalidMnemonic,
    required TResult Function() accountAlreadyAdded,
  }) {
    return invalidMnemonic();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? validationFailed,
    TResult? Function()? privateKeyValidationFailed,
    TResult? Function()? invalidPrivateKey,
    TResult? Function()? invalidMnemonic,
    TResult? Function()? accountAlreadyAdded,
  }) {
    return invalidMnemonic?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? validationFailed,
    TResult Function()? privateKeyValidationFailed,
    TResult Function()? invalidPrivateKey,
    TResult Function()? invalidMnemonic,
    TResult Function()? accountAlreadyAdded,
    required TResult orElse(),
  }) {
    if (invalidMnemonic != null) {
      return invalidMnemonic();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidationFailed value) validationFailed,
    required TResult Function(_PrivateKeyValidationFailed value)
        privateKeyValidationFailed,
    required TResult Function(_InvalidPrivateKey value) invalidPrivateKey,
    required TResult Function(_InvalidMnemonic value) invalidMnemonic,
    required TResult Function(_AccountAlreadyAdded value) accountAlreadyAdded,
  }) {
    return invalidMnemonic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidationFailed value)? validationFailed,
    TResult? Function(_PrivateKeyValidationFailed value)?
        privateKeyValidationFailed,
    TResult? Function(_InvalidPrivateKey value)? invalidPrivateKey,
    TResult? Function(_InvalidMnemonic value)? invalidMnemonic,
    TResult? Function(_AccountAlreadyAdded value)? accountAlreadyAdded,
  }) {
    return invalidMnemonic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidationFailed value)? validationFailed,
    TResult Function(_PrivateKeyValidationFailed value)?
        privateKeyValidationFailed,
    TResult Function(_InvalidPrivateKey value)? invalidPrivateKey,
    TResult Function(_InvalidMnemonic value)? invalidMnemonic,
    TResult Function(_AccountAlreadyAdded value)? accountAlreadyAdded,
    required TResult orElse(),
  }) {
    if (invalidMnemonic != null) {
      return invalidMnemonic(this);
    }
    return orElse();
  }
}

abstract class _InvalidMnemonic implements WalletImportFailure {
  const factory _InvalidMnemonic() = _$_InvalidMnemonic;
}

/// @nodoc
abstract class _$$_AccountAlreadyAddedCopyWith<$Res> {
  factory _$$_AccountAlreadyAddedCopyWith(_$_AccountAlreadyAdded value,
          $Res Function(_$_AccountAlreadyAdded) then) =
      __$$_AccountAlreadyAddedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccountAlreadyAddedCopyWithImpl<$Res>
    extends _$WalletImportFailureCopyWithImpl<$Res, _$_AccountAlreadyAdded>
    implements _$$_AccountAlreadyAddedCopyWith<$Res> {
  __$$_AccountAlreadyAddedCopyWithImpl(_$_AccountAlreadyAdded _value,
      $Res Function(_$_AccountAlreadyAdded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccountAlreadyAdded implements _AccountAlreadyAdded {
  const _$_AccountAlreadyAdded();

  @override
  String toString() {
    return 'WalletImportFailure.accountAlreadyAdded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AccountAlreadyAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() validationFailed,
    required TResult Function() privateKeyValidationFailed,
    required TResult Function() invalidPrivateKey,
    required TResult Function() invalidMnemonic,
    required TResult Function() accountAlreadyAdded,
  }) {
    return accountAlreadyAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? validationFailed,
    TResult? Function()? privateKeyValidationFailed,
    TResult? Function()? invalidPrivateKey,
    TResult? Function()? invalidMnemonic,
    TResult? Function()? accountAlreadyAdded,
  }) {
    return accountAlreadyAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? validationFailed,
    TResult Function()? privateKeyValidationFailed,
    TResult Function()? invalidPrivateKey,
    TResult Function()? invalidMnemonic,
    TResult Function()? accountAlreadyAdded,
    required TResult orElse(),
  }) {
    if (accountAlreadyAdded != null) {
      return accountAlreadyAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValidationFailed value) validationFailed,
    required TResult Function(_PrivateKeyValidationFailed value)
        privateKeyValidationFailed,
    required TResult Function(_InvalidPrivateKey value) invalidPrivateKey,
    required TResult Function(_InvalidMnemonic value) invalidMnemonic,
    required TResult Function(_AccountAlreadyAdded value) accountAlreadyAdded,
  }) {
    return accountAlreadyAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValidationFailed value)? validationFailed,
    TResult? Function(_PrivateKeyValidationFailed value)?
        privateKeyValidationFailed,
    TResult? Function(_InvalidPrivateKey value)? invalidPrivateKey,
    TResult? Function(_InvalidMnemonic value)? invalidMnemonic,
    TResult? Function(_AccountAlreadyAdded value)? accountAlreadyAdded,
  }) {
    return accountAlreadyAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValidationFailed value)? validationFailed,
    TResult Function(_PrivateKeyValidationFailed value)?
        privateKeyValidationFailed,
    TResult Function(_InvalidPrivateKey value)? invalidPrivateKey,
    TResult Function(_InvalidMnemonic value)? invalidMnemonic,
    TResult Function(_AccountAlreadyAdded value)? accountAlreadyAdded,
    required TResult orElse(),
  }) {
    if (accountAlreadyAdded != null) {
      return accountAlreadyAdded(this);
    }
    return orElse();
  }
}

abstract class _AccountAlreadyAdded implements WalletImportFailure {
  const factory _AccountAlreadyAdded() = _$_AccountAlreadyAdded;
}
