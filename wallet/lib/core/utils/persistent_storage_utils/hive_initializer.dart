import 'package:wallet/core/constants.dart';
import 'package:wallet/domain/account/entities/account.dart';
import 'package:wallet/domain/account/entities/address.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveInitializer {
  Future<void> initialize() async {
    await Hive.initFlutter();

    try {
      registerHiveAdapters();
    } catch (e, st) {
      // TODO: logger
      rethrow;
    }

    try {
      await openHiveBoxes();
    } catch (e, st) {
      // TODO: logger
      rethrow;
    }
  }

  void registerHiveAdapters() {
    Hive.registerAdapter<Account>(AccountAdapter());
    Hive.registerAdapter<AccountAddress>(AccountAddressAdapter());
  }

  Future<void> openHiveBoxes() async {
    await Hive.openBox<Account>(kAccountsBox);
  }
}
