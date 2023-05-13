import 'package:wallet/domain/account/entities/account.dart';

abstract class IAccountsLocalRepository {
  bool get hasAccounts;

  /// Loads [Account]s from the localStorage.
  Future<List<Account>> loadAccounts();

  /// Saves given [Account]s to the local storage.
  Future<void> saveAccounts(List<Account> accounts);

  /// Removes all accounts from local storage
  Future<void> removeAllAccounts();

  /// Updates certain account in local storage
  Future<void> updateAccount(Account updatedAccount);

  /// Delete certain account from local storage
  Future<void> deleteAccount(String address);
}
