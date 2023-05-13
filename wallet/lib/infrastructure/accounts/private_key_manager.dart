import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:wallet/core/utils/json_parsing_helper.dart';
import 'package:injectable/injectable.dart';

@injectable
class PrivateKeyManager {
  static const _storageKey = 'private_keys';
  final FlutterSecureStorage _secureStorage;

  const PrivateKeyManager(this._secureStorage);

  Future<Map<String, dynamic>?> _getPrivateKeysMap() async {
    final data = await _secureStorage.read(key: _storageKey);
    if (data == null) {
      return null;
    }

    return JsonParsingHelper.jsonMapFromString(data);
  }

  Future<void> saveWalletPrivateKey({
    required walletAddress,
    required privateKey,
  }) async {
    var keys = await _getPrivateKeysMap();
    keys ??= {};

    keys[walletAddress] = privateKey;

    await _secureStorage.write(
      key: _storageKey,
      value: json.encode(keys),
    );
  }

  Future<String> getWalletPrivateKey(String walletAddress) async {
    final data = await _secureStorage.read(key: _storageKey);
    assert(data != null);

    final privateKeysMap = JsonParsingHelper.jsonMapFromString(data!);
    final privateKey = privateKeysMap[walletAddress];
    assert(privateKey != null);

    return privateKey;
  }

  Future<void> deletePrivateKeys() {
    return _secureStorage.delete(key: _storageKey);
  }

  Future<void> deleteWalletPrivateKey(String address) async {
    final keys = await _getPrivateKeysMap();
    keys!.remove(address);

    await _secureStorage.write(
      key: _storageKey,
      value: json.encode(keys),
    );
  }
}
