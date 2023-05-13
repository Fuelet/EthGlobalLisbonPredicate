import 'package:auto_route/auto_route.dart';
import 'package:wallet/presentation/airdrop/screens/airdrop_screen.dart';
import 'package:wallet/presentation/home/screens/home.dart';
import 'package:wallet/presentation/receive/screens/receive.dart';
import 'package:wallet/presentation/scan/scan_screen.dart';
import 'package:wallet/presentation/send_coin/screens/send_by_qr_screen.dart';
import 'package:wallet/presentation/send_coin/screens/send_coin_screen.dart';
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
    AutoRoute<String?>(
      page: ScanQrScreen,
    ),
    AutoRoute(
      page: SendCoinScreen,
    ),
    AutoRoute(
      page: SendByQRScreen,
    ),
  ],
)
class $AppRouter {}
