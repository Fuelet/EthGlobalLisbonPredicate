// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i11;

import '../application/accounts/account_select/account_select_bloc.dart'
    as _i24;
import '../application/accounts/accounts_bloc.dart' as _i18;
import '../application/balances/balances_bloc/balances_bloc.dart' as _i19;
import '../application/balances/balances_fetch_bloc/balances_fetch_bloc.dart'
    as _i20;
import '../application/create_wallet/create_account/create_account_bloc.dart'
    as _i13;
import '../application/create_wallet/seed_phrase/seed_phrase_bloc.dart' as _i9;
import '../application/receive/bloc/receive_bloc.dart' as _i25;
import '../core/fuel_wallet_address_convertor.dart' as _i5;
import '../domain/account/entities/i_accounts_local_repository.dart' as _i14;
import '../domain/balances/i_balances_repository.dart' as _i21;
import '../domain/wallet_create/i_wallet_create_repository.dart' as _i6;
import '../infrastructure/accounts/accounts_local_repository_impl.dart' as _i15;
import '../infrastructure/accounts/private_key_manager.dart' as _i8;
import '../infrastructure/accounts/seed_phrase_manager.dart' as _i10;
import '../infrastructure/accounts/selected_account_credentials.dart' as _i22;
import '../infrastructure/accounts/selected_account_manager.dart' as _i17;
import '../infrastructure/core/app_injectable_module.dart' as _i26;
import '../infrastructure/core/managers/shared_prefs/raw_manager.dart' as _i12;
import '../infrastructure/core/managers/shared_prefs/shared_prefs_manager.dart'
    as _i16;
import '../infrastructure/core/wallet_unlocked_manager.dart' as _i23;
import '../infrastructure/wallet_create/wallet_create_repository_impl.dart'
    as _i7;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appInjectableModule = _$AppInjectableModule();
  gh.lazySingleton<_i3.Dio>(() => appInjectableModule.dio);
  gh.lazySingleton<_i4.FlutterSecureStorage>(
      () => appInjectableModule.secureStorage);
  gh.factory<_i5.FuelWalletAddressConvertor>(
      () => _i5.FuelWalletAddressConvertor());
  gh.factory<_i6.IWalletCreateRepository>(
      () => _i7.WalletCreateRepositoryImpl());
  gh.factory<_i8.PrivateKeyManager>(
      () => _i8.PrivateKeyManager(gh<_i4.FlutterSecureStorage>()));
  gh.factory<_i9.SeedPhraseBloc>(
      () => _i9.SeedPhraseBloc(gh<_i6.IWalletCreateRepository>()));
  gh.factory<_i10.SeedPhraseManager>(
      () => _i10.SeedPhraseManager(gh<_i4.FlutterSecureStorage>()));
  await gh.factoryAsync<_i11.SharedPreferences>(
    () => appInjectableModule.sharedPreferences,
    preResolve: true,
  );
  gh.factory<_i12.SharedPrefsRawManager>(
      () => _i12.SharedPrefsRawManager(gh<_i11.SharedPreferences>()));
  gh.factory<_i13.CreateAccountBloc>(() => _i13.CreateAccountBloc(
        gh<_i6.IWalletCreateRepository>(),
        gh<_i8.PrivateKeyManager>(),
        gh<_i10.SeedPhraseManager>(),
      ));
  gh.factory<_i14.IAccountsLocalRepository>(
      () => _i15.AccountsLocalRepositoryImpl(
            gh<_i8.PrivateKeyManager>(),
            gh<_i10.SeedPhraseManager>(),
          ));
  gh.factory<_i16.SharedPrefsManager>(
      () => _i16.SharedPrefsManager(gh<_i12.SharedPrefsRawManager>()));
  gh.singleton<_i17.SelectedAccountManager>(
      _i17.SelectedAccountManager(gh<_i16.SharedPrefsManager>()));
  gh.factory<_i18.AccountsBloc>(() => _i18.AccountsBloc(
        gh<_i14.IAccountsLocalRepository>(),
        gh<_i17.SelectedAccountManager>(),
      ));
  gh.factory<_i19.BalancesBloc>(
      () => _i19.BalancesBloc(gh<_i17.SelectedAccountManager>()));
  gh.factory<_i20.BalancesFetchBloc>(() => _i20.BalancesFetchBloc(
        gh<_i21.IBalancesRepository>(),
        gh<_i17.SelectedAccountManager>(),
      ));
  await gh.singletonAsync<_i22.SelectedAccountCredentials>(
    () => appInjectableModule.selectedAccountCredentials(
      gh<_i17.SelectedAccountManager>(),
      gh<_i8.PrivateKeyManager>(),
    ),
    preResolve: true,
  );
  gh.factory<_i23.WalletUnlockedHelper>(
      () => _i23.WalletUnlockedHelper(gh<_i22.SelectedAccountCredentials>()));
  gh.factory<_i24.AccountSelectBloc>(() => _i24.AccountSelectBloc(
        gh<_i17.SelectedAccountManager>(),
        gh<_i22.SelectedAccountCredentials>(),
        gh<_i5.FuelWalletAddressConvertor>(),
      ));
  gh.factory<_i25.ReceiveBloc>(
      () => _i25.ReceiveBloc(gh<_i23.WalletUnlockedHelper>()));
  return getIt;
}

class _$AppInjectableModule extends _i26.AppInjectableModule {}
