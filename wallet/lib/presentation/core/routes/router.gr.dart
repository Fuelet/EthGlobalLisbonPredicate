// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:flutter_fuels/flutter_fuels.dart' as _i14;
import 'package:wallet/domain/account/entities/account.dart' as _i13;
import 'package:wallet/domain/balances/entities/balance.dart' as _i12;
import 'package:wallet/presentation/airdrop/screens/airdrop_screen.dart' as _i6;
import 'package:wallet/presentation/home/screens/home.dart' as _i3;
import 'package:wallet/presentation/receive/screens/receive.dart' as _i5;
import 'package:wallet/presentation/scan/scan_screen.dart' as _i7;
import 'package:wallet/presentation/send_coin/screens/send_by_qr_screen.dart'
    as _i9;
import 'package:wallet/presentation/send_coin/screens/send_coin_screen.dart'
    as _i8;
import 'package:wallet/presentation/setup_wallet/screens/seed_phrase_screen.dart'
    as _i4;
import 'package:wallet/presentation/setup_wallet/screens/setup_wallet_screen.dart'
    as _i2;
import 'package:wallet/presentation/splash/screens/splash_screen.dart' as _i1;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    SetupWalletRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.SetupWalletScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    SeedPhraseRoute.name: (routeData) {
      final args = routeData.argsAs<SeedPhraseRouteArgs>();
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i4.SeedPhraseScreen(
          key: args.key,
          blocContext: args.blocContext,
        ),
      );
    },
    ReceiveRoute.name: (routeData) {
      final args = routeData.argsAs<ReceiveRouteArgs>();
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i5.ReceiveScreen(
          key: args.key,
          amount: args.amount,
          senderAddress: args.senderAddress,
          secret: args.secret,
        ),
      );
    },
    AirdropRoute.name: (routeData) {
      final args = routeData.argsAs<AirdropRouteArgs>();
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i6.AirdropScreen(
          key: args.key,
          address: args.address,
        ),
      );
    },
    ScanQrRoute.name: (routeData) {
      final args = routeData.argsAs<ScanQrRouteArgs>(
          orElse: () => const ScanQrRouteArgs());
      return _i10.AdaptivePage<String?>(
        routeData: routeData,
        child: _i7.ScanQrScreen(
          isForAddress: args.isForAddress,
          key: args.key,
        ),
      );
    },
    SendCoinRoute.name: (routeData) {
      final args = routeData.argsAs<SendCoinRouteArgs>();
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i8.SendCoinScreen(
          key: args.key,
          tokenBalance: args.tokenBalance,
          account: args.account,
        ),
      );
    },
    SendByQRRoute.name: (routeData) {
      final args = routeData.argsAs<SendByQRRouteArgs>();
      return _i10.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i9.SendByQRScreen(
          amount: args.amount,
          senderAddress: args.senderAddress,
          secretWallet: args.secretWallet,
          txId: args.txId,
          key: args.key,
        ),
      );
    },
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i10.RouteConfig(
          SetupWalletRoute.name,
          path: '/setup-wallet-screen',
        ),
        _i10.RouteConfig(
          HomeRoute.name,
          path: '/home-screen',
        ),
        _i10.RouteConfig(
          SeedPhraseRoute.name,
          path: '/seed-phrase-screen',
        ),
        _i10.RouteConfig(
          ReceiveRoute.name,
          path: '/receive-screen',
        ),
        _i10.RouteConfig(
          AirdropRoute.name,
          path: '/airdrop-screen',
        ),
        _i10.RouteConfig(
          ScanQrRoute.name,
          path: '/scan-qr-screen',
        ),
        _i10.RouteConfig(
          SendCoinRoute.name,
          path: '/send-coin-screen',
        ),
        _i10.RouteConfig(
          SendByQRRoute.name,
          path: '/send-by-qr-screen',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashRoute extends _i10.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SetupWalletScreen]
class SetupWalletRoute extends _i10.PageRouteInfo<void> {
  const SetupWalletRoute()
      : super(
          SetupWalletRoute.name,
          path: '/setup-wallet-screen',
        );

  static const String name = 'SetupWalletRoute';
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-screen',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.SeedPhraseScreen]
class SeedPhraseRoute extends _i10.PageRouteInfo<SeedPhraseRouteArgs> {
  SeedPhraseRoute({
    _i11.Key? key,
    required _i11.BuildContext blocContext,
  }) : super(
          SeedPhraseRoute.name,
          path: '/seed-phrase-screen',
          args: SeedPhraseRouteArgs(
            key: key,
            blocContext: blocContext,
          ),
        );

  static const String name = 'SeedPhraseRoute';
}

class SeedPhraseRouteArgs {
  const SeedPhraseRouteArgs({
    this.key,
    required this.blocContext,
  });

  final _i11.Key? key;

  final _i11.BuildContext blocContext;

  @override
  String toString() {
    return 'SeedPhraseRouteArgs{key: $key, blocContext: $blocContext}';
  }
}

/// generated route for
/// [_i5.ReceiveScreen]
class ReceiveRoute extends _i10.PageRouteInfo<ReceiveRouteArgs> {
  ReceiveRoute({
    _i11.Key? key,
    required double amount,
    required String senderAddress,
    required String secret,
  }) : super(
          ReceiveRoute.name,
          path: '/receive-screen',
          args: ReceiveRouteArgs(
            key: key,
            amount: amount,
            senderAddress: senderAddress,
            secret: secret,
          ),
        );

  static const String name = 'ReceiveRoute';
}

class ReceiveRouteArgs {
  const ReceiveRouteArgs({
    this.key,
    required this.amount,
    required this.senderAddress,
    required this.secret,
  });

  final _i11.Key? key;

  final double amount;

  final String senderAddress;

  final String secret;

  @override
  String toString() {
    return 'ReceiveRouteArgs{key: $key, amount: $amount, senderAddress: $senderAddress, secret: $secret}';
  }
}

/// generated route for
/// [_i6.AirdropScreen]
class AirdropRoute extends _i10.PageRouteInfo<AirdropRouteArgs> {
  AirdropRoute({
    _i11.Key? key,
    required String address,
  }) : super(
          AirdropRoute.name,
          path: '/airdrop-screen',
          args: AirdropRouteArgs(
            key: key,
            address: address,
          ),
        );

  static const String name = 'AirdropRoute';
}

class AirdropRouteArgs {
  const AirdropRouteArgs({
    this.key,
    required this.address,
  });

  final _i11.Key? key;

  final String address;

  @override
  String toString() {
    return 'AirdropRouteArgs{key: $key, address: $address}';
  }
}

/// generated route for
/// [_i7.ScanQrScreen]
class ScanQrRoute extends _i10.PageRouteInfo<ScanQrRouteArgs> {
  ScanQrRoute({
    bool isForAddress = false,
    _i11.Key? key,
  }) : super(
          ScanQrRoute.name,
          path: '/scan-qr-screen',
          args: ScanQrRouteArgs(
            isForAddress: isForAddress,
            key: key,
          ),
        );

  static const String name = 'ScanQrRoute';
}

class ScanQrRouteArgs {
  const ScanQrRouteArgs({
    this.isForAddress = false,
    this.key,
  });

  final bool isForAddress;

  final _i11.Key? key;

  @override
  String toString() {
    return 'ScanQrRouteArgs{isForAddress: $isForAddress, key: $key}';
  }
}

/// generated route for
/// [_i8.SendCoinScreen]
class SendCoinRoute extends _i10.PageRouteInfo<SendCoinRouteArgs> {
  SendCoinRoute({
    _i11.Key? key,
    required _i12.TokenBalance tokenBalance,
    required _i13.Account account,
  }) : super(
          SendCoinRoute.name,
          path: '/send-coin-screen',
          args: SendCoinRouteArgs(
            key: key,
            tokenBalance: tokenBalance,
            account: account,
          ),
        );

  static const String name = 'SendCoinRoute';
}

class SendCoinRouteArgs {
  const SendCoinRouteArgs({
    this.key,
    required this.tokenBalance,
    required this.account,
  });

  final _i11.Key? key;

  final _i12.TokenBalance tokenBalance;

  final _i13.Account account;

  @override
  String toString() {
    return 'SendCoinRouteArgs{key: $key, tokenBalance: $tokenBalance, account: $account}';
  }
}

/// generated route for
/// [_i9.SendByQRScreen]
class SendByQRRoute extends _i10.PageRouteInfo<SendByQRRouteArgs> {
  SendByQRRoute({
    required double amount,
    required String senderAddress,
    required _i14.FuelWallet secretWallet,
    required String txId,
    _i11.Key? key,
  }) : super(
          SendByQRRoute.name,
          path: '/send-by-qr-screen',
          args: SendByQRRouteArgs(
            amount: amount,
            senderAddress: senderAddress,
            secretWallet: secretWallet,
            txId: txId,
            key: key,
          ),
        );

  static const String name = 'SendByQRRoute';
}

class SendByQRRouteArgs {
  const SendByQRRouteArgs({
    required this.amount,
    required this.senderAddress,
    required this.secretWallet,
    required this.txId,
    this.key,
  });

  final double amount;

  final String senderAddress;

  final _i14.FuelWallet secretWallet;

  final String txId;

  final _i11.Key? key;

  @override
  String toString() {
    return 'SendByQRRouteArgs{amount: $amount, senderAddress: $senderAddress, secretWallet: $secretWallet, txId: $txId, key: $key}';
  }
}
