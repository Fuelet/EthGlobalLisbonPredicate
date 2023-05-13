import 'package:dartz/dartz.dart';
import 'package:flutter_fuels/flutter_fuels.dart';
import 'package:wallet/domain/account/entities/account.dart';
import 'package:wallet/domain/account/entities/address.dart';
import 'package:wallet/domain/blockchain_network/blockchain_network.dart';
import 'package:wallet/domain/wallet_create/i_wallet_create_repository.dart';
import 'package:wallet/domain/wallet_import/typedef.dart';
import 'package:wallet/domain/wallet_import/wallet_import_failure.dart';

import 'package:injectable/injectable.dart';

@Injectable(as: IWalletCreateRepository)
class WalletCreateRepositoryImpl implements IWalletCreateRepository {
  const WalletCreateRepositoryImpl();

  @override
  Future<Account> createAccount() async {
    final wallet = await FuelWallet.generateNewWallet(
      networkUrl: BlockchainNetwork.testnet.host,
    );

    final account = Account(
      fuelAddress: AccountAddress(
        b256Address: wallet.b256Address,
        bech32Address: wallet.bech32Address,
      ),
      createdAt: DateTime.now(),
    );
    account.privateKey = wallet.privateKey;
    account.seedPhrase = wallet.mnemonicPhrase!;

    return account;
  }

  @override
  Future<WalletImportResponse> importAccountWithMnemonic(
    String mnemonic,
  ) async {
    try {
      final wallet = await FuelWallet.newFromMnemonicPhrase(
        networkUrl: BlockchainNetwork.testnet.host,
        mnemonic: mnemonic,
      );

      final account = Account(
        fuelAddress: AccountAddress(
          b256Address: wallet.b256Address,
          bech32Address: wallet.bech32Address,
        ),
        createdAt: DateTime.now(),
      );

      account.privateKey = wallet.privateKey;
      account.seedPhrase = wallet.mnemonicPhrase!;

      return Right(account);
    } catch (err) {
      return const Left(WalletImportFailure.invalidMnemonic());
    }
  }

  @override
  Future<WalletImportResponse> importAccountWithPrivateKey(
    String privateKey,
  ) async {
    try {
      final wallet = await FuelWallet.newFromPrivateKey(
        networkUrl: BlockchainNetwork.testnet.host,
        privateKey: privateKey,
      );

      final account = Account(
        fuelAddress: AccountAddress(
          b256Address: wallet.b256Address,
          bech32Address: wallet.bech32Address,
        ),
        createdAt: DateTime.now(),
      );

      account.privateKey = wallet.privateKey;
      account.seedPhrase = wallet.mnemonicPhrase;

      return Right(account);
    } catch (err) {
      return const Left(WalletImportFailure.invalidPrivateKey());
    }
  }
}
