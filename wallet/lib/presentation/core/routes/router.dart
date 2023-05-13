import 'package:auto_route/auto_route.dart';
import 'package:wallet/presentation/setup_wallet/screens/setup_wallet_screen.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SetupWalletScreen,
      initial: true,
    ),
  ],
)
class $AppRouter {}
