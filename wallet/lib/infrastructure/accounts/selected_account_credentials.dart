import 'dart:async';

import 'package:wallet/infrastructure/accounts/private_key_manager.dart';
import 'package:wallet/infrastructure/accounts/selected_account_manager.dart';

class SelectedAccountCredentials {
  String? privateKey;
  String? walletAddress;
  late final StreamSubscription<String?> _subscription;
  final SelectedAccountManager _selectedAccountManager;
  final PrivateKeyManager _privateKeyManager;

  SelectedAccountCredentials(
    this._selectedAccountManager,
    this._privateKeyManager,
  );

  Future<void> setCredentialsByAddress({
    required String address,
  }) async {
    walletAddress = address;
    privateKey = await _privateKeyManager.getWalletPrivateKey(address);
  }

  Future<void> init() async {
    final selectedAccountAddress = _selectedAccountManager.selectedAddress;
    if (selectedAccountAddress != null) {
      privateKey =
          await _privateKeyManager.getWalletPrivateKey(selectedAccountAddress);
      walletAddress = selectedAccountAddress;
    }

    _subscription = _selectedAccountManager.selectedAddressStream.listen(
      (String? address) async {
        walletAddress = address;
        privateKey = address == null
            ? null
            : await _privateKeyManager.getWalletPrivateKey(address);
      },
    );
  }
}
