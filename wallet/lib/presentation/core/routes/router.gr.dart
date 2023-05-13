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
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:wallet/presentation/setup_wallet/screens/seed_phrase_screen.dart'
    as _i2;
import 'package:wallet/presentation/setup_wallet/screens/setup_wallet_screen.dart'
    as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    SetupWalletRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SetupWalletScreen(),
      );
    },
    SeedPhraseRoute.name: (routeData) {
      final args = routeData.argsAs<SeedPhraseRouteArgs>();
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i2.SeedPhraseScreen(
          key: args.key,
          blocContext: args.blocContext,
        ),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          SetupWalletRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          SeedPhraseRoute.name,
          path: '/seed-phrase-screen',
        ),
      ];
}

/// generated route for
/// [_i1.SetupWalletScreen]
class SetupWalletRoute extends _i3.PageRouteInfo<void> {
  const SetupWalletRoute()
      : super(
          SetupWalletRoute.name,
          path: '/',
        );

  static const String name = 'SetupWalletRoute';
}

/// generated route for
/// [_i2.SeedPhraseScreen]
class SeedPhraseRoute extends _i3.PageRouteInfo<SeedPhraseRouteArgs> {
  SeedPhraseRoute({
    _i4.Key? key,
    required _i4.BuildContext blocContext,
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

  final _i4.Key? key;

  final _i4.BuildContext blocContext;

  @override
  String toString() {
    return 'SeedPhraseRouteArgs{key: $key, blocContext: $blocContext}';
  }
}
