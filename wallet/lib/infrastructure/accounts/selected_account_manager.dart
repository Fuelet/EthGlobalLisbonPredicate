import 'dart:async';

import 'package:wallet/infrastructure/core/managers/shared_prefs/shared_prefs_manager.dart';
import 'package:injectable/injectable.dart';

@singleton
class SelectedAccountManager {
  final SharedPrefsManager _sharedPrefsManager;

  SelectedAccountManager(this._sharedPrefsManager);

  String? get selectedAddress {
    return _sharedPrefsManager.selectedAccountAddress.get();
  }

  Future<void> setSelectedAccountAddress(String address) async {
    _selectedAddressStreamController.add(address);
    await _sharedPrefsManager.selectedAccountAddress.set(address);
  }

  Future<void> resetSelectedAddress() {
    _selectedAddressStreamController.add(null);
    return _sharedPrefsManager.selectedAccountAddress.set(null);
  }

  final _selectedAddressStreamController =
      StreamController<String?>(sync: true);

  Stream<String?> get selectedAddressStream =>
      _selectedAddressStreamController.stream;
}
