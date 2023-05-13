import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:wallet/infrastructure/accounts/private_key_manager.dart';
import 'package:wallet/infrastructure/accounts/selected_account_credentials.dart';
import 'package:wallet/infrastructure/accounts/selected_account_manager.dart';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class AppInjectableModule {
  @LazySingleton()
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();

  @LazySingleton()
  Dio get dio => Dio();

  @preResolve
  @singleton
  Future<SelectedAccountCredentials> selectedAccountCredentials(
    SelectedAccountManager selectedAccountManager,
    PrivateKeyManager privateKeyManager,
  ) async {
    return SelectedAccountCredentials(selectedAccountManager, privateKeyManager)
      ..init();
  }

  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();
}
