import 'package:wallet/domain/account/entities/account.dart';
import 'package:wallet/domain/wallet_import/typedef.dart';

abstract class IWalletCreateRepository {
  Future<Account> createAccount();

  Future<WalletImportResponse> importAccountWithMnemonic(String mnemonic);

  Future<WalletImportResponse> importAccountWithPrivateKey(String privateKey);
}
