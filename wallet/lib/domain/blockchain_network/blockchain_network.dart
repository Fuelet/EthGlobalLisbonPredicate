enum BlockchainNetwork {
  testnet(
    host: "https://beta-3.fuel.network",
    indexerUrl: "https://beta-3.fuel.network/graphql",
    faucetUrl: "https://faucet-beta-3.fuel.network",
  );

  final String host;
  final String indexerUrl;
  final String faucetUrl;

  const BlockchainNetwork({
    required this.host,
    required this.indexerUrl,
    required this.faucetUrl,
  });
}
