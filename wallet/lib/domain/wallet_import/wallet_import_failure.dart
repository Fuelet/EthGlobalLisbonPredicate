import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_import_failure.freezed.dart';

@freezed
class WalletImportFailure with _$WalletImportFailure {
  const factory WalletImportFailure.validationFailed() = _ValidationFailed;
  const factory WalletImportFailure.privateKeyValidationFailed() =
      _PrivateKeyValidationFailed;
  const factory WalletImportFailure.invalidPrivateKey() = _InvalidPrivateKey;
  const factory WalletImportFailure.invalidMnemonic() = _InvalidMnemonic;
  const factory WalletImportFailure.accountAlreadyAdded() =
      _AccountAlreadyAdded;
}
