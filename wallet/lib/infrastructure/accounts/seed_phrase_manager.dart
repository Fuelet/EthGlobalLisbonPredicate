import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:wallet/core/utils/json_parsing_helper.dart';
import 'package:injectable/injectable.dart';

@injectable
class SeedPhraseManager {
  static const _storageKey = 'seed_phrases';
  final FlutterSecureStorage _secureStorage;

  const SeedPhraseManager(this._secureStorage);

  Future<Map<String, dynamic>?> _getSeedPhrasesMap() async {
    final data = await _secureStorage.read(key: _storageKey);
    if (data == null) {
      return null;
    }

    return JsonParsingHelper.jsonMapFromString(data);
  }

  Future<void> saveWalletSeedPhrase({
    required walletAddress,
    required seedPhrase,
  }) async {
    var keys = await _getSeedPhrasesMap();
    keys ??= {};

    keys[walletAddress] = seedPhrase;

    await _secureStorage.write(
      key: _storageKey,
      value: json.encode(keys),
    );
  }

  Future<String?> getWalletSeedPhrase(String walletAddress) async {
    final data = await _secureStorage.read(key: _storageKey);
    if (data == null) {
      return null;
    }

    final seedPhrasesMap = JsonParsingHelper.jsonMapFromString(data);
    final seedPhrase = seedPhrasesMap[walletAddress];

    return seedPhrase;
  }

  Future<void> deleteSeedPhrases() {
    return _secureStorage.delete(key: _storageKey);
  }

  Future<void> deleteWalletSeedPhrase(String address) async {
    final keys = await _getSeedPhrasesMap();
    keys!.remove(address);

    await _secureStorage.write(
      key: _storageKey,
      value: json.encode(keys),
    );
  }
}
