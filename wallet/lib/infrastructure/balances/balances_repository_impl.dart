import 'dart:math';

import 'package:wallet/core/utils/coins_data.dart';
import 'package:wallet/core/utils/extensions/iterable_x.dart';
import 'package:wallet/domain/balances/entities/balance.dart';
import 'package:wallet/domain/balances/entities/fetched_balance_data.dart';
import 'package:wallet/domain/balances/i_balances_repository.dart';
import 'package:wallet/domain/blockchain_network/blockchain_network.dart';
import 'package:wallet/infrastructure/accounts/selected_account_credentials.dart';
import 'package:wallet/infrastructure/balances/balance_dto.dart';
import 'package:wallet/infrastructure/core/graph_ql/query_storage.dart';
import 'package:wallet/infrastructure/core/graphql_manager.dart';
import 'package:wallet/infrastructure/core/wallet_unlocked_manager.dart';
import 'package:wallet/infrastructure/transactions/models/page_info_dto.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IBalancesRepository)
class WalletCreateRepositoryImpl implements IBalancesRepository {
  final WalletUnlockedHelper walletUnlockedHelper;
  final SelectedAccountCredentials selectedAccountCredentials;

  final GraphQLManager _graphQLManager;

  const WalletCreateRepositoryImpl(
    this.walletUnlockedHelper,
    this.selectedAccountCredentials,
    this._graphQLManager,
  );

  @override
  Future<FetchedBalanceData> getBalances() async {
    final unlockedWallet =
        await walletUnlockedHelper.getSelectedWalletUnlocked();

    final b256Address = unlockedWallet.b256Address;
    final link = BlockchainNetwork.testnet.indexerUrl;

    final response = await _graphQLManager.query(
      link,
      QueryStorage.getBalances,
      {"address": b256Address},
    );

    final nodes = response.data!["balances"]["nodes"] as List;

    final List<TokenBalance> tokenBalances = [];

    for (var node in nodes) {
      final foundCoinData =
          coins.firstWhereOrNull((e) => e.assetId == node["assetId"]);

      if (foundCoinData != null) {
        tokenBalances.add(
          TokenBalanceDto.fromJson(node).toDomain(
            name: foundCoinData.name,
            symbol: foundCoinData.symbol,
            decimal: foundCoinData.decimal,
            coinId: foundCoinData.coinId,
          ),
        );
      }
    }

    // TODO: hardcoded ETH!!!
    if (tokenBalances.isEmpty) {
      tokenBalances.add(
        TokenBalance(
          amount: 0,
          fractionalAmount: 0,
          asset:
              '0x0000000000000000000000000000000000000000000000000000000000000000',
          symbol: 'ETH',
          name: 'Ethereum',
          decimal: pow(10, 9) as int,
          coinId: 'ethereum',
        ),
      );
    }

    return FetchedBalanceData(
      balances: tokenBalances,
      walletAddress: selectedAccountCredentials.walletAddress!,
      pageInfo: PageInfoDto.fromJson(
        response.data!["balances"]['pageInfo'],
      ).toEntity(),
    );
  }
}
