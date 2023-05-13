import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet/application/balances/balances_fetch_bloc/balances_fetch_bloc.dart';
import 'package:wallet/domain/blockchain_network/blockchain_network.dart';
import 'package:wallet/gen/assets.gen.dart';
import 'package:wallet/presentation/core/widgets/app_bar.dart';
import 'package:wallet/presentation/core/widgets/icon_button.dart';
import 'package:wallet/presentation/core/widgets/scaffold.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AirdropScreen extends StatefulWidget {
  final String address;

  const AirdropScreen({
    super.key,
    required this.address,
  });

  @override
  State<AirdropScreen> createState() => _AirdropScreenState();
}

class _AirdropScreenState extends State<AirdropScreen> {
  final _controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted);

  @override
  void initState() {
    super.initState();

    _controller.loadRequest(
      Uri.parse(
        "${BlockchainNetwork.testnet.faucetUrl}/?address=${widget.address}",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FLTScaffold(
      appBar: FLTAppBar(
        leading: Center(
          child: FLTIconButton(
            onTap: context.router.pop,
            icon: SvgPicture.asset(Assets.icons.close),
          ),
        ),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: FLTIconButton(
                onTap: () {
                  context
                      .read<BalancesFetchBloc>()
                      .add(const BalancesFetchEvent.fetchBalances());

                  // TODO: uncomment after implement [TransactionsFetchBloc]
                  // context.read<TransactionsFetchBloc>().add(
                  //       TransactionsFetchEvent.fetchTransactions(
                  //         isLoadingMore: false,
                  //         tokensData:
                  //             context.read<BalancesBloc>().state.tokensData,
                  //       ),
                  //     );
                  context.router.pop();
                },
                icon: SvgPicture.asset(
                  Assets.icons.check,
                ),
              ),
            ),
          ),
        ],
        title: const Text("Airdrop"),
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
