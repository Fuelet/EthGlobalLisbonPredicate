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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:wallet/presentation/receive/screens/receive.dart' as _i3;
import 'package:wallet/presentation/setup_wallet/screens/seed_phrase_screen.dart'
    as _i2;
import 'package:wallet/presentation/setup_wallet/screens/setup_wallet_screen.dart'
    as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SetupWalletRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SetupWalletScreen(),
      );
    },
    SeedPhraseRoute.name: (routeData) {
      final args = routeData.argsAs<SeedPhraseRouteArgs>();
      return _i4.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i2.SeedPhraseScreen(
          key: args.key,
          blocContext: args.blocContext,
        ),
      );
    },
    ReceiveRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.ReceiveScreen(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          SetupWalletRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          SeedPhraseRoute.name,
          path: '/seed-phrase-screen',
        ),
        _i4.RouteConfig(
          ReceiveRoute.name,
          path: '/receive-screen',
        ),
      ];
}

/// generated route for
/// [_i1.SetupWalletScreen]
class SetupWalletRoute extends _i4.PageRouteInfo<void> {
  const SetupWalletRoute()
      : super(
          SetupWalletRoute.name,
          path: '/',
        );

  static const String name = 'SetupWalletRoute';
}

/// generated route for
/// [_i2.SeedPhraseScreen]
class SeedPhraseRoute extends _i4.PageRouteInfo<SeedPhraseRouteArgs> {
  SeedPhraseRoute({
    _i5.Key? key,
    required _i5.BuildContext blocContext,
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

  final _i5.Key? key;

  final _i5.BuildContext blocContext;

  @override
  String toString() {
    return 'SeedPhraseRouteArgs{key: $key, blocContext: $blocContext}';
  }
}

/// generated route for
/// [_i3.ReceiveScreen]
class ReceiveRoute extends _i4.PageRouteInfo<void> {
  const ReceiveRoute()
      : super(
          ReceiveRoute.name,
          path: '/receive-screen',
        );

  static const String name = 'ReceiveRoute';
}
