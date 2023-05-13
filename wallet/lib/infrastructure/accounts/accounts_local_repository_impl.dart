import 'package:wallet/core/constants.dart';
import 'package:wallet/domain/account/entities/account.dart';
import 'package:wallet/domain/account/entities/i_accounts_local_repository.dart';
import 'package:wallet/infrastructure/accounts/private_key_manager.dart';
import 'package:wallet/infrastructure/accounts/seed_phrase_manager.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IAccountsLocalRepository)
class AccountsLocalRepositoryImpl implements IAccountsLocalRepository {
  final PrivateKeyManager _privateKeyManager;
  final SeedPhraseManager _seedPhraseManager;

  const AccountsLocalRepositoryImpl(
      this._privateKeyManager, this._seedPhraseManager);

  @override
  bool get hasAccounts {
    return Hive.box<Account>(kAccountsBox).isNotEmpty;
  }

  @override
  Future<void> saveAccounts(List<Account> accounts) async {
    final accountsBox = Hive.box<Account>(kAccountsBox);
    for (Account account in accounts) {
      await accountsBox.put(account.address, account);
    }
  }

  @override
  Future<List<Account>> loadAccounts() async {
    final accountsBox = Hive.box<Account>(kAccountsBox);
    final accounts = accountsBox.values.toList();

    // settinGg prviate key for every account and adding to model
    for (Account account in accounts) {
      final privateKey = await _privateKeyManager.getWalletPrivateKey(
        account.address,
      );
      final seedPhrase = await _seedPhraseManager.getWalletSeedPhrase(
        account.address,
      );

      account.privateKey = privateKey;
      account.seedPhrase = seedPhrase;
    }
    return accounts;
  }

  @override
  Future<void> removeAllAccounts() async {
    final accountsBox = Hive.box<Account>(kAccountsBox);

    await accountsBox.clear();
  }

  @override
  Future<void> updateAccount(Account updatedAccount) async {
    final accountsBox = Hive.box<Account>(kAccountsBox);

    await accountsBox.put(updatedAccount.address, updatedAccount);
  }

  @override
  Future<void> deleteAccount(String address) async {
    final accountsBox = Hive.box<Account>(kAccountsBox);

    await accountsBox.delete(address);
  }
}
