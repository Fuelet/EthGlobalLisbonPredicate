import 'package:wallet/core/models/coin.dart';

const List<CoinData> coins = [
  CoinData(
    name: "Ethereum",
    symbol: "ETH",
    decimal: 9,
    assetId:
        "0x0000000000000000000000000000000000000000000000000000000000000000",
    coinId: "ethereum",
  ),
  CoinData(
    name: "Bitcoin",
    symbol: "BTC",
    decimal: 8,
    assetId:
        "0xf7d6d3344dd36493d7e6b02b16a679778ad24539e2698af02558868a6f2feb81",
    coinId: "bitcoin",
  ),
  CoinData(
    name: "USDC",
    symbol: "USDC",
    decimal: 6,
    assetId:
        "0x56fb8789a590ea9c12af6fe6dc2b43f347700b049d4f823fd4476c6f366af201",
    coinId: "usd-coin",
  ),
  CoinData(
    name: "Uniswap",
    symbol: "UNI",
    decimal: 9,
    assetId:
        "0x5381bbd1cff41519062c8531ec30e8ea1a2d752e59e4ac884068d3821e9f0093",
    coinId: "uniswap",
  ),
  CoinData(
    name: "Chainlink",
    symbol: "LINK",
    decimal: 9,
    assetId:
        "0x2018850b249a9c531a51d52465290d7bfc9f18838a5c4c6f476bff9553a8f7e9",
    coinId: "chainlink",
  ),
  CoinData(
    name: "Sway",
    symbol: "SWAY",
    decimal: 9,
    assetId:
        "0x89eac25d412c5c1b63d212deacc109dcff804eff70101fe0fc72167bc7884aa2",
    coinId: null,
  ),
  CoinData(
    name: "Compound",
    symbol: "COMP",
    decimal: 9,
    assetId:
        "0x6c0a715375b510e1ef562bb5b3a7afb2c9b4a7380251e3f295e3225410b96488",
    coinId: "compound-governance-token",
  ),
];
