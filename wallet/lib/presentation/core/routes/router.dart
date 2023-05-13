import 'package:auto_route/auto_route.dart';
import 'package:wallet/presentation/airdrop/screens/airdrop_screen.dart';
import 'package:wallet/presentation/home/screens/home.dart';
import 'package:wallet/presentation/receive/screens/receive.dart';
import 'package:wallet/presentation/setup_wallet/screens/seed_phrase_screen.dart';
import 'package:wallet/presentation/setup_wallet/screens/setup_wallet_screen.dart';
import 'package:wallet/presentation/splash/screens/splash_screen.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashScreen,
      initial: true,
    ),
    AutoRoute(
      page: SetupWalletScreen,
    ),
    AutoRoute(
      page: HomeScreen,
    ),
    AutoRoute(
      page: SeedPhraseScreen,
    ),
    AutoRoute(
      page: ReceiveScreen,
    ),
    AutoRoute(
      page: AirdropScreen,
    ),
  ],
)
class $AppRouter {}
