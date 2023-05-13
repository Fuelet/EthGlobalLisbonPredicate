import 'package:flutter_fuels/flutter_fuels.dart';
import 'package:wallet/domain/blockchain_network/blockchain_network.dart';
import 'package:wallet/infrastructure/accounts/selected_account_credentials.dart';
import 'package:injectable/injectable.dart';

@injectable
class WalletUnlockedHelper {
  final SelectedAccountCredentials credentials;

  const WalletUnlockedHelper(this.credentials);

  Future<FuelWallet> getSelectedWalletUnlocked() async {
    final wallet = await FuelWallet.newFromPrivateKey(
      networkUrl: BlockchainNetwork.testnet.host,
      privateKey: credentials.privateKey!,
    );

    return wallet;
  }
}
