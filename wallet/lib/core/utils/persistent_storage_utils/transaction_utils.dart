class TransactionUtils {
  static int calculateTransactionFee(
    int gasPrice,
    int gasUsed,
    int priceFactor,
  ) =>
      (gasUsed / priceFactor * gasPrice).ceil();
}
