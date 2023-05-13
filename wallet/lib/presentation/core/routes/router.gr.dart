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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:wallet/presentation/airdrop/screens/airdrop_screen.dart' as _i6;
import 'package:wallet/presentation/home/screens/home.dart' as _i3;
import 'package:wallet/presentation/receive/screens/receive.dart' as _i5;
import 'package:wallet/presentation/setup_wallet/screens/seed_phrase_screen.dart'
    as _i4;
import 'package:wallet/presentation/setup_wallet/screens/setup_wallet_screen.dart'
    as _i2;
import 'package:wallet/presentation/splash/screens/splash_screen.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    SetupWalletRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.SetupWalletScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    SeedPhraseRoute.name: (routeData) {
      final args = routeData.argsAs<SeedPhraseRouteArgs>();
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i4.SeedPhraseScreen(
          key: args.key,
          blocContext: args.blocContext,
        ),
      );
    },
    ReceiveRoute.name: (routeData) {
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.ReceiveScreen(),
      );
    },
    AirdropRoute.name: (routeData) {
      final args = routeData.argsAs<AirdropRouteArgs>();
      return _i7.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i6.AirdropScreen(
          key: args.key,
          address: args.address,
        ),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i7.RouteConfig(
          SetupWalletRoute.name,
          path: '/setup-wallet-screen',
        ),
        _i7.RouteConfig(
          HomeRoute.name,
          path: '/home-screen',
        ),
        _i7.RouteConfig(
          SeedPhraseRoute.name,
          path: '/seed-phrase-screen',
        ),
        _i7.RouteConfig(
          ReceiveRoute.name,
          path: '/receive-screen',
        ),
        _i7.RouteConfig(
          AirdropRoute.name,
          path: '/airdrop-screen',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SetupWalletScreen]
class SetupWalletRoute extends _i7.PageRouteInfo<void> {
  const SetupWalletRoute()
      : super(
          SetupWalletRoute.name,
          path: '/setup-wallet-screen',
        );

  static const String name = 'SetupWalletRoute';
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-screen',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.SeedPhraseScreen]
class SeedPhraseRoute extends _i7.PageRouteInfo<SeedPhraseRouteArgs> {
  SeedPhraseRoute({
    _i8.Key? key,
    required _i8.BuildContext blocContext,
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

  final _i8.Key? key;

  final _i8.BuildContext blocContext;

  @override
  String toString() {
    return 'SeedPhraseRouteArgs{key: $key, blocContext: $blocContext}';
  }
}

/// generated route for
/// [_i5.ReceiveScreen]
class ReceiveRoute extends _i7.PageRouteInfo<void> {
  const ReceiveRoute()
      : super(
          ReceiveRoute.name,
          path: '/receive-screen',
        );

  static const String name = 'ReceiveRoute';
}

/// generated route for
/// [_i6.AirdropScreen]
class AirdropRoute extends _i7.PageRouteInfo<AirdropRouteArgs> {
  AirdropRoute({
    _i8.Key? key,
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

  final _i8.Key? key;

  final String address;

  @override
  String toString() {
    return 'AirdropRouteArgs{key: $key, address: $address}';
  }
}
