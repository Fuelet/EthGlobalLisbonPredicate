part of 'balances_bloc.dart';

class BalancesState with EquatableMixin {
  final String? walletAddress;
  final List<TokenBalance> balances;
  final PageInfo? loadedPageInfo;

  const BalancesState({
    required this.walletAddress,
    required this.balances,
    required this.loadedPageInfo,
  });

  factory BalancesState.initial() => const BalancesState(
        balances: [],
        walletAddress: null,
        loadedPageInfo: null,
      );

  BalancesState copyWith({
    String? walletAddress,
    List<TokenBalance>? balances,
    PageInfo? loadedPageInfo,
  }) =>
      BalancesState(
        walletAddress: walletAddress ?? this.walletAddress,
        balances: balances ?? this.balances,
        loadedPageInfo: loadedPageInfo ?? this.loadedPageInfo,
      );

  TokenBalance getBalanceByAssetId(String assetId) =>
      balances.firstWhere((element) => element.asset == assetId);

  @override
  List<Object?> get props => [balances, walletAddress, loadedPageInfo];

  List<TokenData> get tokensData {
    return balances
        .map(
          (balance) => TokenData(
            assetId: balance.asset,
            symbol: balance.symbol,
            decimal: balance.decimal,
          ),
        )
        .toList();
  }
}
